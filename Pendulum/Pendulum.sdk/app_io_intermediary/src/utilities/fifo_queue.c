/*
 * fifo_queue.c
 *
 *  Created on: Mar 17, 2015
 *      Author: teja
 */

#include "fifo_queue.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "axi_gpio.h"
#include "xintc.h"

#define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID

static XLlFifo fifo_enqueue;
static XLlFifo fifo_dequeue;

static XIntc interrupt_controller;
int init_interrupt_controller();
static void fifo_handler(XLlFifo *InstancePtr);
int SetupInterruptSystem(XIntc *IntcInstancePtr, XLlFifo *InstancePtr, u16 FifoIntrId);
static void FifoHandler(XLlFifo *Fifo);
static void FifoRecvHandler(XLlFifo *Fifo);
static void FifoSendHandler(XLlFifo *Fifo);
static void FifoErrorHandler(XLlFifo *InstancePtr, u32 Pending);

int init_fifo_queues(){

	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	// Initialize the Dequeue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(DEQUEUE_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DEQUEUE_DEV_ID);
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_dequeue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_dequeue);
	XLlFifo_IntClear(&fifo_dequeue,0xffffffff);
	Status = XLlFifo_Status(&fifo_dequeue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_dequeue));
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int enqueue(int* data, int size){
	int i = 0;
	for(i = 0; i < size; ++i){
		if( XLlFifo_iTxVacancy(&fifo_enqueue))
			XLlFifo_TxPutWord(&fifo_enqueue, data[i]);
	}

	// Start Transmission by writing transmission length into the TLR
	XLlFifo_iTxSetLen(&fifo_enqueue, WORD_SIZE*size);

	// Check for Transmission completion
	while( !(XLlFifo_IsTxDone(&fifo_enqueue)));

	return 0;
}

int dequeue(int* buffer){
	int ReceiveLength = 0;
	int RxWord = 0;

	ReceiveLength = (XLlFifo_iRxGetLen(&fifo_dequeue))/WORD_SIZE;

	if(sizeof(buffer)/WORD_SIZE < ReceiveLength)	return -1;

	int i = 0;
	// Start Receiving
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(&fifo_dequeue);
		buffer[i] = RxWord;
	}

	return ReceiveLength;
}
