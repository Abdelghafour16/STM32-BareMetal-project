################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.c 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/%.o Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/%.su Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/%.cyclo: ../Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/%.c Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_sin_cos_example-2f-RTE-2f-Device-2f-ARMCM55

clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_sin_cos_example-2f-RTE-2f-Device-2f-ARMCM55:
	-$(RM) ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/startup_ARMCM55.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_sin_cos_example/RTE/Device/ARMCM55/system_ARMCM55.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_sin_cos_example-2f-RTE-2f-Device-2f-ARMCM55

