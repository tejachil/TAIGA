/*
 * fifo_queue.c
 *
 *  Created on: Mar 17, 2015
 *      Author: teja
 */

#include "fifo_queue.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"
#include "xintc.h"
#include "axi_gpio.h"
#include "taiga_pendulum_parameters.h"

static XLlFifo fifo_queue;

static void dequeue_handler(XLlFifo *Fifo);

static XIntc interrupt_controller;

int init_fifo_queues(){
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	// Initialize the Enqueue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(QUEUE_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", QUEUE_DEV_ID);
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_queue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_queue);
	XLlFifo_IntClear(&fifo_queue,0xffffffff);
	Status = XLlFifo_Status(&fifo_queue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_queue));
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int enqueue(unsigned int* data, int size){
	int i = 0;
	for(i = 0; i < size; ++i){
		if(XLlFifo_iTxVacancy(&fifo_queue))
			XLlFifo_TxPutWord(&fifo_queue, data[i]);
	}

	// Start Transmission by writing transmission length into the TLR
	XLlFifo_iTxSetLen(&fifo_queue, WORD_SIZE*size);

	// Check for Transmission completion
	while( !(XLlFifo_IsTxDone(&fifo_queue)));

	return 0;
}

int init_interrupt_system(){

	int Status;

	// Initialize the interrupt controller driver so that it is ready to use.
	Status = XIntc_Initialize(&interrupt_controller, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Connect a device driver handler that will be called when an interrupt for the device occurs,
	Status = XIntc_Connect(&interrupt_controller, FIFO_INTR_ID,(XInterruptHandler)dequeue_handler,(void *)&fifo_queue);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Start the interrupt controller such that interrupts are enabled for all devices that cause interrupts
	Status = XIntc_Start(&interrupt_controller, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the AXI FIFO device.
	XIntc_Enable(&interrupt_controller, FIFO_INTR_ID);


	// Initialize the exception table.
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)XIntc_InterruptHandler,
		(void *)&interrupt_controller);;

	// Enable exceptions.
	Xil_ExceptionEnable();

	XLlFifo_IntEnable(&fifo_queue, XLLF_INT_RC_MASK);

	return XST_SUCCESS;
}

static void dequeue_handler(XLlFifo *InstancePtr)
{
	u32 Pending;
	int i;
	u32 RxWord;
	static u32 ReceiveLength;
	xil_printf("Receiving Data...\n");

	int buffer[5] = {21, 22, 23, 24, 25};
		enqueue(buffer, sizeof(buffer)/WORD_SIZE);


	Pending = XLlFifo_IntPending(InstancePtr);
	while (Pending) {
		// Read Receive Length
		ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;

		if (ReceiveLength < 1)	break; // ERROR HANDLING HERE FOR FALSE ALARM
		if(ReceiveLength > 4)	ReceiveLength = 4;

		static bool ledState = true;
		set_led(LED1, ledState);
		ledState = !ledState;

		QueuePacket newPacket;
		for (i=0; i < ReceiveLength; i++) {
			RxWord = XLlFifo_RxGetWord(InstancePtr);
			if(i == 1){
				newPacket.command = RxWord >> 24 & 0xFF;
				newPacket.operation = RxWord >> 16 & 0xFF;
				newPacket.bytes = RxWord >> 8 & 0xFF;
				newPacket.slave = RxWord & 0xFF;
				newPacket.length = ReceiveLength;
			}
			else{
				newPacket.data[i-1] = RxWord;
			}
			xil_printf("%d\n", RxWord);
		}

		// Clear Interrupt
		XLlFifo_IntClear(InstancePtr, Pending);

		ioi_handler(newPacket);

		// Check if there is another interrupt flag
		Pending = XLlFifo_IntPending(InstancePtr);
	}
}
