################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.c 

OBJS += \
./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.o 

C_DEPS += \
./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/ComputeLibrary/Source/%.o Drivers/CMSIS/DSP/ComputeLibrary/Source/%.su Drivers/CMSIS/DSP/ComputeLibrary/Source/%.cyclo: ../Drivers/CMSIS/DSP/ComputeLibrary/Source/%.c Drivers/CMSIS/DSP/ComputeLibrary/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Inc -I"C:/ST/works space/01_first/Drivers/CMSIS/Include" -I"C:/ST/works space/01_first/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/ST/works space/01_first/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-ComputeLibrary-2f-Source

clean-Drivers-2f-CMSIS-2f-DSP-2f-ComputeLibrary-2f-Source:
	-$(RM) ./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.cyclo ./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.d ./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.o ./Drivers/CMSIS/DSP/ComputeLibrary/Source/arm_cl_tables.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-ComputeLibrary-2f-Source

