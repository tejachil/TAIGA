/*
 * production_controller.c
 *
 *  Created on: Oct 8, 2014
 *      Author: teja
 */

#include "backup_controller.h"
//#include "pendulum_system.h"
#include "utilities/axi_gpio.h"
#include "utilities/fifo_queue.h"
#include "xtmrctr.h"
#include "xintc.h"


//float calculateKalmanControlSignal(ControlParameters *params);
void backup_control_timer(void *CallBackRef, u8 TmrCtrNumber);
void stopBackupControl();

static int TmrCtrSetupIntrSystem(XIntc* IntcInstancePtr, XTmrCtr* InstancePtr, u16 DeviceId, u16 IntrId, u8 TmrCtrNumber);

XIntc InterruptController;
XTmrCtr TimerCounterInst;

/****************** Common Global variables for all ******************/
volatile unsigned sec1000; // This is updated 1000 times per second by interrupt handler
volatile float output_V,theta_R,alpha_R,theta_des;
volatile float thetaDot=0.,alphaDot=0.;


int temp;
float u;

//static ControlParameters plantParams;

int startBackupControl(){
	// Initialize xpre and xhat
	//getStateInformation(plantParams.xpre);

	int Status;

	// Initialize the timer counter so that it's ready to use
	Status = XTmrCtr_Initialize(&TimerCounterInst, TMRCTR_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Perform a self-test to ensure that the hardware was built correctly, use the 1st timer in the device (0)
	Status = XTmrCtr_SelfTest(&TimerCounterInst, TIMER_CNTR_0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Connect the timer counter to the interrupt subsystem such that interrupts can occur.  This function is application specific.
	Status = TmrCtrSetupIntrSystem(&InterruptController, &TimerCounterInst, TMRCTR_DEVICE_ID, TMRCTR_INTERRUPT_ID, TIMER_CNTR_0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Setup the handler for the timer counter that will be called from the interrupt context when the timer expires, specify a pointer to the
	XTmrCtr_SetHandler(&TimerCounterInst, backup_control_timer, &TimerCounterInst);

	// Use auto reload mode such that the timer counter will reload itself automatically and continue repeatedly, without this option it would expire once only
	XTmrCtr_SetOptions(&TimerCounterInst, TIMER_CNTR_0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);


	// Set a reset value for the timer counter
	XTmrCtr_SetResetValue(&TimerCounterInst, TIMER_CNTR_0, RESET_VALUE);

	// Start the timer counter such that it's incrementing by default
	XTmrCtr_Start(&TimerCounterInst, TIMER_CNTR_0);

	return XST_SUCCESS;
}

void backup_control_timer(void *CallBackRef, u8 TmrCtrNumber){
	static bool state = true;
	set_led(LED2, state);
	state = !state;
	static int buffer[2];

	static int count = 3;
	buffer[0] = 23;
	buffer[1] = count;
	//if(count < 22){
		enqueue(buffer, sizeof(buffer)/WORD_SIZE);
		++count;
	//}

	dequeue(buffer);

	/*
	set_led(LED2, true);

	static unsigned sec1000 = 0;; // This is updated 1000 times per second by interrupt handler
	sec1000++; // update variable

	plantParams.theta_des = OPERATIONAL_SET_POINT*pi/180;

	int enc1 = -encoderRead(SS_ENCODER_S) % 4096;
	plantParams.thetaR = enc1*Kenc;

	int enc2 = encoderRead(SS_ENCODER_P) % 4096;
	plantParams.alphaR = enc2*Kenc-pi;

	if((plantParams.alphaR >= 0 ? plantParams.alphaR:-plantParams.alphaR) < (20.*pi/180)){
		plantParams.u = -calculateKalmanControlSignal(&plantParams);
	}
	else plantParams.u = 0;

	writeDAC(plantParams.u);

	set_led(LED2, false);
	*/
}


static int TmrCtrSetupIntrSystem(XIntc* IntcInstancePtr, XTmrCtr* TmrCtrInstancePtr, u16 DeviceId, u16 IntrId, u8 TmrCtrNumber){
	int Status;

	// Initialize the interrupt controller driver so that
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Connect a device driver handler that will be called when an interrupt...
	Status = XIntc_Connect(IntcInstancePtr, IntrId,
				(XInterruptHandler)XTmrCtr_InterruptHandler,
				(void *)TmrCtrInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Start the interrupt controller
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the timer counter
	XIntc_Enable(IntcInstancePtr, IntrId);

	// Initialize the exception table.
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XIntc_InterruptHandler, IntcInstancePtr);

	// Enable non-critical exceptions.
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}
