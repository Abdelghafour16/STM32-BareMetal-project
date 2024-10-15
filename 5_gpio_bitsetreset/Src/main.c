#include "STM32F103x6.h"





#define GPIOCEN   (1U<<4)
#define LED_PIN   (1U<<13)




int main(void){

	RCC->APB2ENR |=GPIOCEN;

	GPIOC->CRH |=(1U<<20);
	GPIOC->CRH &=~(1U<<21);



     while(1){

    	 GPIOC->BSRR =(LED_PIN);
    	 for(int i=0;i<100000;i++){

    	 }
    	 GPIOC->BSRR =(1U<<29);
    	    	 for(int i=0;i<100000;i++){

    	    	 }





     }



}
