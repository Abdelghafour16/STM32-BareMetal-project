#include "uart.h"

#define uart2EN         (1U<<17)
#define GPIOAEN         (1U<<0)

#define APB1_CLK        16000000
#define uart_baudrate   115200


static void uart_set_baudrate(USART_TypeDef *USARTx,uint32_t periphclk, uint32_t baudrate);
static uint16_t compute_uart_BD(uint32_t periphclk, uint32_t baudrate);



void uart2_rxtx_init(void)
{
	/**************** confg uart gpio pin *************/
	         /* Enable clock access to gpioa*/
	            RCC->AHB1ENR |= GPIOAEN;

	        /*set PA2 to alternate function mode*/
	            GPIOA->MODER &=~(1U<<4);
	            GPIOA->MODER |= (1U<<5);

		        /*set PA3 to alternate function mode*/
	            GPIOA->MODER &=~(1U<<6);
	            GPIOA->MODER |= (1U<<7);



	       /*set PA2  alternate function type to uart_tx (AF7)*/
	            GPIOA->AFR[0] |=(1U<<8);
	            GPIOA->AFR[0] |=(1U<<9);
	            GPIOA->AFR[0] |=(1U<<10);
	            GPIOA->AFR[0] &=~(1U<<11);

	 	   /*set PA3  alternate function type to uart_tx (AF7)*/
	            GPIOA->AFR[0] |=(1U<<12);
	          	GPIOA->AFR[0] |=(1U<<13);
	          	GPIOA->AFR[0] |=(1U<<14);
	          	GPIOA->AFR[0] &=~(1U<<15);



	/**************** confg uart gpio pin *************/
	          /*Enable clock access to uart2*/
	            RCC->APB1ENR |= uart2EN;
	                      /* configure baudrate*/
	            uart_set_baudrate(USART2, APB1_CLK, uart_baudrate);

	        /* configure the transfer direction*/
	            USART2->CR1 =  ((1<<2) | (1<<3));

	       /* Enable uart module*/
                 USART2->CR1 |=(1<<13);
}



void uart2_tx_init(void)
{
	/**************** confg uart gpio pin *************/
	         /* Enable clock access to gpioa*/
	            RCC->AHB1ENR |= GPIOAEN;

	        /*set PA2 to alternate function mode*/
	            GPIOA->MODER &=~(1U<<4);
	            GPIOA->MODER |= (1U<<5);


	       /*set PA2  alternate function type to uart_tx (AF7)*/
	            GPIOA->AFR[0] |=(1U<<8);
	            GPIOA->AFR[0] |=(1U<<9);
	            GPIOA->AFR[0] |=(1U<<10);
	            GPIOA->AFR[0] &=~(1U<<11);


	/**************** confg uart gpio pin *************/
	          /*Enable clock access to uart2*/
	            RCC->APB1ENR |= uart2EN;
	                      /* configure baudrate*/
	            uart_set_baudrate(USART2, APB1_CLK, uart_baudrate);

	        /* configure the transfer direction*/
	            USART2->CR1 |=(1<<3);

	       /* Enable uart module*/
                 USART2->CR1 |=(1<<13);
}
char uart2_read(void)
{
	/*make sure the receive data register is not empty*/
	while(!(USART2->SR & (1<<5))){}

	return USART2->DR;

}


void uart2_write(int ch)
{
	/*make sure the transmit data register is empty*/
	           while(!(USART2->SR & (1<<7))){}
	      /*write to transmit data register*/
	           USART2-> DR = (ch & 0xff);

}

static void uart_set_baudrate(USART_TypeDef *USARTx,uint32_t periphclk, uint32_t baudrate){

	USARTx->BRR = compute_uart_BD(periphclk, baudrate);
}

static uint16_t compute_uart_BD(uint32_t periphclk, uint32_t baudrate){

	return ((periphclk + (baudrate/2))/baudrate);

}

int __io_putchar(int ch)
{
	uart2_write(ch);
	return ch;
}

