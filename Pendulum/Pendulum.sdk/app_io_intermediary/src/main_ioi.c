/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */


/***************************** Include Files *********************************/
#include "xparameters.h"
#include "xil_exception.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"
#include "utilities/axi_gpio.h"
#include "xuartlite.h"

#define UARTLITE_DEVICE_ID		XPAR_UARTLITE_0_DEVICE_ID

XUartLite UartLite;		 /* Instance of the UartLite device */

#include "xintc.h"


#define FIFO_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID

#define INTC_DEVICE_ID          XPAR_INTC_0_DEVICE_ID
#define FIFO_INTR_ID		XPAR_INTC_0_LLFIFO_0_VEC_ID

#define INTC           XIntc
#define INTC_HANDLER   XIntc_InterruptHandler



#define WORD_SIZE 4			/* Size of words in bytes */

#define MAX_PACKET_LEN 1

#define NO_OF_PACKETS 1

#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN

#undef DEBUG

int XLlFifoInterruptExample(XLlFifo *InstancePtr, u16 DeviceId);
int TxSend(XLlFifo *InstancePtr, u32 *SourceAddr);
static void FifoHandler(XLlFifo *Fifo);
static void FifoRecvHandler(XLlFifo *Fifo);
static void FifoSendHandler(XLlFifo *Fifo);
static void FifoErrorHandler(XLlFifo *InstancePtr, u32 Pending);
int SetupInterruptSystem(INTC *IntcInstancePtr, XLlFifo *InstancePtr,
				u16 FifoIntrId);
static void DisableIntrSystem(INTC *IntcInstancePtr, u16 FifoIntrId);

volatile int Done;
volatile int Error;

XLlFifo FifoInstance;

static INTC Intc;

u32 SourceBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];
u32 DestinationBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];

int main()
{
	int Status;

	//xil_printf("--- Entering main() ---\n\r");
	init_axi_gpio();

	/*
	 * Initialize the UartLite driver so that it is ready to use.
	 */
	Status = XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XLlFifoInterruptExample(&FifoInstance, FIFO_DEV_ID);
	if (Status != XST_SUCCESS) {
		//xil_printf("Axi Streaming FIFO Interrupt Example Test Failed");
		//xil_printf("--- Exiting main() ---\n\r");
		return XST_FAILURE;
	}

	//xil_printf("Axi Streaming FIFO Interrupt Example Test passed\n\r");
	//xil_printf("--- Exiting main() ---\n\r");

	return XST_SUCCESS;
}


int XLlFifoInterruptExample(XLlFifo *InstancePtr, u16 DeviceId)
{
	XLlFifo_Config *Config;
	int Status;
	int i;
	int err;
	Status = XST_SUCCESS;

	/* Initialize the Device Configuration Interface driver */
	Config = XLlFfio_LookupConfig(DeviceId);
	if (!Config) {
		//xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XLlFifo_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		//xil_printf("Initialization failed\n\r");
		return Status;
	}

	/* Check for the Reset value */
	Status = XLlFifo_Status(InstancePtr);
	XLlFifo_IntClear(InstancePtr,0xffffffff);
	Status = XLlFifo_Status(InstancePtr);
	if(Status != 0x0) {
		//xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t"
			   // "Expected : 0x0\n\r",
			   // XLlFifo_Status(InstancePtr));
		return XST_FAILURE;
	}

	/*
	 * Connect the Axi Streaming FIFO to the interrupt subsystem such
	 * that interrupts can occur. This function is application specific.
	 */
	Status = SetupInterruptSystem(&Intc, InstancePtr, FIFO_INTR_ID);
	if (Status != XST_SUCCESS) {
		//xil_printf("Failed intr setup\r\n");
		return XST_FAILURE;
	}

	XLlFifo_IntEnable(InstancePtr, XLLF_INT_ALL_MASK);

	Done = 0;

	while(1){
		select_controller(read_sw_raw());
	}

	return Status;
}

static void FifoHandler(XLlFifo *InstancePtr)
{
	u32 Pending;

	Pending = XLlFifo_IntPending(InstancePtr);
	while (Pending) {
		if (Pending & XLLF_INT_RFPE_MASK) {
			xil_printf("RFPE: %d\n", Pending);
			FifoRecvHandler(InstancePtr);
			XLlFifo_IntClear(InstancePtr, XLLF_INT_RFPE_MASK);
		}
		else {
			xil_printf("else: %d\n", Pending);
			XLlFifo_IntClear(InstancePtr, Pending);
		}
		Pending = XLlFifo_IntPending(InstancePtr);
	}
}


static void FifoRecvHandler(XLlFifo *InstancePtr)
{
	int i;
	u32 RxWord;
	static u32 ReceiveLength;
	xil_printf("Receiving Data...\n");

	// Read Recieve Length
	ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;

	static bool ledState = true;
	set_led(LED1, ledState);
	ledState = !ledState;

	for (i=0; i < ReceiveLength; i++) {
			RxWord = XLlFifo_RxGetWord(InstancePtr);
			xil_printf("%d\n", RxWord);
			*(DestinationBuffer+i) = RxWord;
	}
}


int SetupInterruptSystem(INTC *IntcInstancePtr, XLlFifo *InstancePtr,
				u16 FifoIntrId)
{

	int Status;

	// Initialize the interrupt controller driver so that it is ready to use.
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Connect a device driver handler that will be called when an interrupt for the device occurs,
	Status = XIntc_Connect(IntcInstancePtr, FifoIntrId,
			   (XInterruptHandler)FifoHandler,
			   (void *)InstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Start the interrupt controller such that interrupts are enabled for all devices that cause interrupts
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the AXI FIFO device.
	XIntc_Enable(IntcInstancePtr, FifoIntrId);


	// Initialize the exception table.
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)INTC_HANDLER,
		(void *)IntcInstancePtr);;

	// Enable exceptions.
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

static void DisableIntrSystem(INTC *IntcInstancePtr, u16 FifoIntrId)
{
	/* Disconnect the interrupts */
	XIntc_Disconnect(IntcInstancePtr, FifoIntrId);
}
