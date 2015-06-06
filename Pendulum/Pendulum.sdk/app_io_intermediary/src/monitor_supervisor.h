/*
 * monitor_supervisor.h
 *
 *  Created on: Apr 8, 2015
 *      Author: teja
 */

#ifndef MONITOR_SUPERVISOR_H_
#define MONITOR_SUPERVISOR_H_

#include "utilities/axi_gpio.h"

void supervisor_send_state_vector(float stateVector[4]);

void supervisor_send_tail(float u, bool startTAIGA, bool trigger, bool wdt);

#endif /* MONITOR_SUPERVISOR_H_ */
