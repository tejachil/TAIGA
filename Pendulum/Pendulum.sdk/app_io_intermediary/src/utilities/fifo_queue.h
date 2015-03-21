/*
 * fifo_queue.h
 *
 *  Created on: Mar 17, 2015
 *      Author: teja
 */

#ifndef FIFO_QUEUE_H_
#define FIFO_QUEUE_H_

#include "xparameters.h"
#include "xllfifo.h"

#define ENQUEUE_DEV_ID	XPAR_AXI_FIFO_IOI_ENQUEUE_DEVICE_ID
#define DEQUEUE_DEV_ID	XPAR_AXI_FIFO_IOI_DEQUEUE_DEVICE_ID
#define FIFO_INTR_ID	XPAR_INTC_0_LLFIFO_0_VEC_ID

#define WORD_SIZE 		4 // Size of words in bytes

int init_fifo_queues();

int enqueue(int* data, int size);

int dequeue(int* buffer);

#endif /* FIFO_QUEUE_H_ */
