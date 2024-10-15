#include "stm32f4xx_hal.h"



void pa5_init(void);
void pc13_btn_init(void);





int main()
{

	HAL_Init();




	while(1)
	{



	}
}

void usart2_init(void)\
{
	USART_HandleTypeDef    huart2;

	GPIO_InitTypeDef    GPIO_InitStruct ;

	__HAL_RCC_GPIOA_CLK_ENABLE();

	__HAL_RCC_USART2_CLK_ENABLE();

	GPIO_InitStruct.Pin        = GPIO_PIN_2|GPIO_PIN_3;
	GPIO_InitStruct.Mode       = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Alternate  = GPIO_AF7_USART2;
    GPIO_InitStruct.Speed      = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Pull       = GPIO_NOPULL;

    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // configure UART module
    huart2.Instance             = USART2;
    huart2.Init.BaudRate        = 115200;
    huart2.Init.WordLength      = UART_WORDLENGTH_8B;
    huart2.Init.StopBits        = UART_STOPBITS_1;
    huart2.Init.Parity          = UART_PARITY_NONE;
    huart2.Init.Mode            = UART_MODE_TX;

    HAL_UART_Init(&huart2);





}


void SysTick_Handler(void)
{
	HAL_IncTick();// the heartbeat of the system
}
