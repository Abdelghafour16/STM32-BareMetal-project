#include "STM32F103x6.h"
#include <stdio.h>
#include <stdint.h>
#include "uart.h"



#define GPIOCEN            (1U<<4)
#define LED_PIN            (1U<<13)




char key;


int main(void){
	/*RCC->APB2ENR |=GPIOCEN;

		GPIOC->CRH |=(1U<<20);
		GPIOC->CRH &=~(1U<<21);


	uart_rxtx_init();

     while(1){

    	key = uart_read();

    	if(key=='1'){
    		GPIOC->ODR |=LED_PIN;
    	}
    	else
    	{
    		GPIOC->ODR &=~LED_PIN;

    	}





     }*/
	uart_tx_init();

	     while(1){

	    	 printf("y");






	     }
}












