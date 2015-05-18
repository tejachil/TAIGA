/*
 * monitor_supervisor.c
 *
 *  Created on: Apr 8, 2015
 *      Author: teja
 */


#include "monitor_supervisor.h"
#include "utilities/axi_spi.h"
#include "utilities/axi_uart.h"
#include "monitor_plant.h"

void supervisor_send_state_vector(float stateVector[4]){
	u8 uartBuffer[20];

	u32_to_buffer((u32)(stateVector[0]*10000), &uartBuffer[0], 4);
	u32_to_buffer((u32)(stateVector[1]*10000), &uartBuffer[4], 4);
	u32_to_buffer((u32)(stateVector[2]*1000), &uartBuffer[8], 4);
	u32_to_buffer((u32)(stateVector[3]*1000), &uartBuffer[12], 4);


	while(!uart_send(uartBuffer, 16));
}

void supervisor_send_tail(float u){
	u8 uartBuffer[8];

	u32_to_buffer((u32)(u*10000), &uartBuffer[0], 4);
	uartBuffer[4] = '-';
	uartBuffer[5] = '-';
	uartBuffer[6] = '-';
	uartBuffer[7] = '\n';

	while(!uart_send(uartBuffer, 8));
}

void supervisor_update_set_point(){
	/*u8 supervisorInput;

	if(uart_receive(&supervisorInput)){
		if(supervisorInput&0x7F > THETA_GUARD)	return;
		int setPoint = (0x80 & supervisorInput) ? -(supervisorInput&0x7F) : (supervisorInput&0x7F);
		set_set_point(setPoint);
	}*/
}
