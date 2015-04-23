################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ioi_handler.c \
../src/main_ioi.c \
../src/monitor_plant.c \
../src/monitor_supervisor.c \
../src/pendulum_plant.c 

OBJS += \
./src/ioi_handler.o \
./src/main_ioi.o \
./src/monitor_plant.o \
./src/monitor_supervisor.o \
./src/pendulum_plant.o 

C_DEPS += \
./src/ioi_handler.d \
./src/main_ioi.d \
./src/monitor_plant.d \
./src/monitor_supervisor.d \
./src/pendulum_plant.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I../../bsp_ioi_standalone/IO_Intermediary/include -I../../global_includes -c -fmessage-length=0 -MT"$@" -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.4 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


