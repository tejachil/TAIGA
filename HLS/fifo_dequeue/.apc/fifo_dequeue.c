#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ap_cint.h>

int fifo_dequeue(
	// FIFO module interfaces
	volatile int *fifo_data,
	volatile uint1 *fifo_recv_enable,
	volatile uint1 *fifo_recv_valid
){

#pragma HLS INTERFACE ap_none port=fifo_data
#pragma HLS INTERFACE ap_none port=fifo_recv_enable
#pragma HLS INTERFACE ap_none port=fifo_recv_valid
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS RESOURCE core=AXI4LiteS metadata="-bus_bundle axi_fifo" variable=return

	// set the receive enable for the FIFO
	*fifo_recv_enable = 1;

	// wait for the FIFO to make the data available
	while(*fifo_recv_valid != 1);

	// clear the receive enable for the FIFO
	*fifo_recv_enable = 0;

	return *fifo_data;


	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++
}
