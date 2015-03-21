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
#include "utilities/fifo_queue.h"
#include "xuartlite.h"

#define UARTLITE_DEVICE_ID		XPAR_UARTLITE_0_DEVICE_ID

XUartLite UartLite;		 /* Instance of the UartLite device */

#include "xintc.h"


#define DEQUEUE_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID


#define WORD_SIZE 4			/* Size of words in bytes */


int XLlFifoInterruptExample(XLlFifo *InstancePtr1, u16 DeviceId2);

volatile int Done;
volatile int Error;



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

	init_fifo_queues();

	//Status = XLlFifoInterruptExample(&fifo_dequeue, DEQUEUE_DEV_ID);
	if (Status != XST_SUCCESS) {
		//xil_printf("Axi Streaming FIFO Interrupt Example Test Failed");
		//xil_printf("--- Exiting main() ---\n\r");
		return XST_FAILURE;
	}

	//xil_printf("Axi Streaming FIFO Interrupt Example Test passed\n\r");
	//xil_printf("--- Exiting main() ---\n\r");

	return XST_SUCCESS;
}


int XLlFifoInterruptExample(XLlFifo *InstancePtr1, u16 DeviceId2)
{

}
