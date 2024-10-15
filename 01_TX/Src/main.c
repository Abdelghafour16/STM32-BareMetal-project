#include "STM32F446XX.h"
#include <stdio.h>
#include <stdint.h>
#include "uart.h"

char key;

int main(void){

	RCC->AHB1ENR |= (1<<0);

	GPIOA->MODER |= (1<<10);
	GPIOA->MODER &= ~(1<<11);




	//uart2_tx_init();
	void uart2_rxtx_init();


	while (1)
	{
		//printf("hello guys\n\r");

        key= uart2_read();
       if(key == '1'){
    	   GPIOA->ODR |= (1<<5);
       }
       else{
           	   GPIOA->ODR &=~ (1<<5);
              }



	}




}












