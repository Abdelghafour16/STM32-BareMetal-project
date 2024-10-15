################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/ft6x06/ft6x06.c 

OBJS += \
./Drivers/BSP/Components/ft6x06/ft6x06.o 

C_DEPS += \
./Drivers/BSP/Components/ft6x06/ft6x06.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ft6x06/%.o Drivers/BSP/Components/ft6x06/%.su Drivers/BSP/Components/ft6x06/%.cyclo: ../Drivers/BSP/Components/ft6x06/%.c Drivers/BSP/Components/ft6x06/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components-2f-ft6x06

clean-Drivers-2f-BSP-2f-Components-2f-ft6x06:
	-$(RM) ./Drivers/BSP/Components/ft6x06/ft6x06.cyclo ./Drivers/BSP/Components/ft6x06/ft6x06.d ./Drivers/BSP/Components/ft6x06/ft6x06.o ./Drivers/BSP/Components/ft6x06/ft6x06.su

.PHONY: clean-Drivers-2f-BSP-2f-Components-2f-ft6x06

