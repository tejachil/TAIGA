/*
 * pendulum_plant.h
 *
 *  Created on: Mar 31, 2015
 *      Author: teja
 */

#ifndef PENDULUM_PLANT_H_
#define PENDULUM_PLANT_H_

#include "utilities/axi_spi.h"

void init_pendulum_plant();

void write_voltage(u32 voltage_data);

u32 read_sensor(slave_select sensor, u32 data);

#endif /* PENDULUM_PLANT_H_ */
