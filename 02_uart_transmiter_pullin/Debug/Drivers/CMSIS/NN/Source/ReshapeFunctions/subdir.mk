################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c 

OBJS += \
./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o 

C_DEPS += \
./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Source/ReshapeFunctions/%.o Drivers/CMSIS/NN/Source/ReshapeFunctions/%.su Drivers/CMSIS/NN/Source/ReshapeFunctions/%.cyclo: ../Drivers/CMSIS/NN/Source/ReshapeFunctions/%.c Drivers/CMSIS/NN/Source/ReshapeFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions

clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions:
	-$(RM) ./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.cyclo ./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d ./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o ./Drivers/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions

