################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/RTOS2/Template/cmsis_os1.c 

OBJS += \
./Drivers/CMSIS/RTOS2/Template/cmsis_os1.o 

C_DEPS += \
./Drivers/CMSIS/RTOS2/Template/cmsis_os1.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/RTOS2/Template/%.o Drivers/CMSIS/RTOS2/Template/%.su Drivers/CMSIS/RTOS2/Template/%.cyclo: ../Drivers/CMSIS/RTOS2/Template/%.c Drivers/CMSIS/RTOS2/Template/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-RTOS2-2f-Template

clean-Drivers-2f-CMSIS-2f-RTOS2-2f-Template:
	-$(RM) ./Drivers/CMSIS/RTOS2/Template/cmsis_os1.cyclo ./Drivers/CMSIS/RTOS2/Template/cmsis_os1.d ./Drivers/CMSIS/RTOS2/Template/cmsis_os1.o ./Drivers/CMSIS/RTOS2/Template/cmsis_os1.su

.PHONY: clean-Drivers-2f-CMSIS-2f-RTOS2-2f-Template

