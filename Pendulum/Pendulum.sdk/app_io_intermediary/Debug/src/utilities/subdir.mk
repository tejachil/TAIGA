################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/utilities/axi_gpio.c \
../src/utilities/fifo_queue.c \
../src/utilities/interrupt_controller.c 

OBJS += \
./src/utilities/axi_gpio.o \
./src/utilities/fifo_queue.o \
./src/utilities/interrupt_controller.o 

C_DEPS += \
./src/utilities/axi_gpio.d \
./src/utilities/fifo_queue.d \
./src/utilities/interrupt_controller.d 


# Each subdirectory must supply rules for building sources it contributes
src/utilities/%.o: ../src/utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_ioi_standalone/IO_Intermediary/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.4 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


