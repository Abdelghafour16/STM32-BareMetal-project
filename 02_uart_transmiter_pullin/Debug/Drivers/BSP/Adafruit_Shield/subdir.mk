################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.c \
../Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.c 

OBJS += \
./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.o \
./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.o 

C_DEPS += \
./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.d \
./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Adafruit_Shield/%.o Drivers/BSP/Adafruit_Shield/%.su Drivers/BSP/Adafruit_Shield/%.cyclo: ../Drivers/BSP/Adafruit_Shield/%.c Drivers/BSP/Adafruit_Shield/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Adafruit_Shield

clean-Drivers-2f-BSP-2f-Adafruit_Shield:
	-$(RM) ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.cyclo ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.d ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.o ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_lcd.su ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.cyclo ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.d ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.o ./Drivers/BSP/Adafruit_Shield/stm32_adafruit_sd.su

.PHONY: clean-Drivers-2f-BSP-2f-Adafruit_Shield

