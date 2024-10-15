#include "uart.h"




#define GPIOAEN       (1U<<0)
#define UART2EN       (1U<<17)

#define APB1_CLK       16000000
#define UART_BAUDRATE  115200

#define CR1_TE        (1U<<3)
#define CR1_RE         (1U<<2)

#define CR1_UE         (1U<<13)

#define SR_TXE         (1U<<7)
#define SR_RXNE         (1U<<5)




static void uart_set_baudrate(USART_TypeDef *USARTx, uint32_t periphCLK, uint32_t BaudRate);
static uint32_t compute_uart_bd(uint32_t periphCLK, uint32_t BaudRate);

void uart_write(int ch);


int __io_putchar(int ch){
	uart_write(ch);
	return ch ;
}

void uart_rxtx_init(void){
	/*******************configure UART GPIO pin*********************/
	/*Enable clock access to GPIOA*/
	RCC->APB2ENR |=GPIOAEN;

	/*set PA2 to alternate function mode*/
	GPIOA->MODER  |=(1U<<5);
	GPIOA->MODER &=~(1U<<4);


	/*set PA3 to alternate function mode*/       // mode (12,13)  CNF (14,15)
	GPIOA->MODER |=(1U<<5);
	GPIOA->MODER&=~(1U<<6);


	/*set PA2 alternate function type to UART_TX*/
	GPIOA->AFR[0] &=~(1U<<11);
	GPIOA->AFR[0] |=(1U<<10);
	GPIOA->AFR[0] |=(1U<<9);
	GPIOA->AFR[0] |=(1U<<8);


	/*set PA3 alternate function type to UART_RX*/
	GPIOA->AFR[0] &=~(1U<<15);
	GPIOA->AFR[0] |=(1U<<14);
	GPIOA->AFR[0] |=(1U<<13);
	GPIOA->AFR[0] |=(1U<<12);





	/*******************configure UART module *********************/
	/*Enable clock access to UART2*/
	RCC->APB1ENR |= UART2EN;

	/*configure the BAUDRATE*/
	uart_set_baudrate(USART2,APB1_CLK,UART_BAUDRATE);

	/*configure the transfer and receive direction*/
	USART2->CR1 = (CR1_TE | CR1_RE);

	/*Enable the UART module*/
	USART2->CR1 |= CR1_UE;

}


void uart_tx_init(void){
	/*******************configure UART GPIO pin*********************/
	/*Enable clock access to GPIOB*/
	RCC->AHB1ENR |=GPIOAEN;

	/*set PB10 to alternate function mode*/
	GPIOB->MODER |=(1U<<5);
	GPIOB->MODER &=~(1U<<4);

	/*set PB10 alternate function type to UART_TX*/
	GPIOA->AFR[0] &=~(1U<<11);
	GPIOA->AFR[0] |=(1U<<10);
	GPIOA->AFR[0] |=(1U<<9);
	GPIOA->AFR[0] |=(1U<<8);






	/*******************configure UART module *********************/
	/*Enable clock access to UART3*/
	RCC->APB1ENR |= UART2EN;

	/*configure the BAUDRATE*/
	uart_set_baudrate(USART2,APB1_CLK,UART_BAUDRATE);

	/*configure the transfer direction*/
	USART2->CR1 = CR1_TE;

	/*Enable the UART module*/
	USART2->CR1 |= CR1_UE;

}

char uart_read(void){
	/*make the receive data register is not empty*/
	while(!(USART2->SR & SR_RXNE)){}

	/*read data*/
	return USART2->DR;


}


void uart_write(int ch){
	/*make the transmit data register is empty*/
	while(!(USART2->SR & SR_TXE)){}                    //we stuck here until it becomes true then we can write our value

	/*write to transmit data register*/
	USART2->DR   = (ch   &  0xff);
}



static void uart_set_baudrate(USART_TypeDef *USARTx, uint32_t periphCLK, uint32_t BaudRate){

	USARTx->BRR = compute_uart_bd(periphCLK,BaudRate);
}

static uint32_t compute_uart_bd(uint32_t periphCLK, uint32_t BaudRate){

	return ((periphCLK + (BaudRate/2U))/BaudRate);
}




