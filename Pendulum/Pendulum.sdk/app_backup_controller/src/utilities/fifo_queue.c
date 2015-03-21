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

static XLlFifo fifo_enqueue;
static XLlFifo fifo_dequeue;

int init_fifo_queues(){
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	// Initialize the Enqueue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(ENQUEUE_DEV_ID);
	if (!Config) {
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_enqueue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_enqueue);
	XLlFifo_IntClear(&fifo_enqueue,0xffffffff);
	Status = XLlFifo_Status(&fifo_enqueue);
	if(Status != 0x0) {
		return XST_FAILURE;
	}

	// Initialize the Dequeue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(DEQUEUE_DEV_ID);
	if (!Config) {
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_dequeue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_dequeue);
	XLlFifo_IntClear(&fifo_dequeue,0xffffffff);
	Status = XLlFifo_Status(&fifo_dequeue);
	if(Status != 0x0) {
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
