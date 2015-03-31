################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./.apc/fifo_dequeue.o 

C_DEPS += \
./.apc/fifo_dequeue.d 


# Each subdirectory must supply rules for building sources it contributes
.apc/%.o: ../.apc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__kernel -D__global -Dglobal -Dlocal -D__local -Dconstant -D__constant -Dprivate -D__private -D__private -I/opt/Xilinx/Vivado_HLS/2014.4/include/ap_sysc -I/opt/Xilinx/Vivado_HLS/2014.4/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2014.4/include -I/opt/Xilinx/Vivado_HLS/2014.4/lnx64/tools/auto_cc/include -I/home/teja/Documents/TAIGA/HLS -I/opt/Xilinx/Vivado_HLS/2014.4/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


