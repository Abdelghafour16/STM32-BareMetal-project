#include "STM32F446XX.h"
#include "adc.h"
#include <stdint.h>


#define GPIOAEN     (1U<<0)
#define ADC1EN      (1U<<8)
#define ADC_CH1     (1U<<0)
#define ADC_EOC     (1U<<1) // end of conversion
#define SQRLength   0x00

void PA1_adc_init(void){
	/***Configure the ADC GPIO pin***/
	/* Enable clock access to GPIOA*/
    RCC->AHB1ENR |=GPIOAEN;

	/* SEt the mode of PA1 to analog*/
	GPIOA->MODER |=(1U<<2);
	GPIOA->MODER |=(1U<<3);


	/***Configure the ADC module***/
	/* Enable clock access to ADC*/
	RCC->APB2ENR |=ADC1EN;

	/*** configure ADC parameters***/
	/*conversion sequence start*/             //where our conversion start
	ADC1->SQR3 = ADC_CH1;

	/*conversion sequence length*/            // when we use 3 channels the length is 3
	ADC1->SQR1 = SQRLength;                   // we write how many conversion we use in binary

	/*Enable ADC module*/
	ADC1->CR2 |=(1U<<0);



}

void start_conversion(void){
	/*start conversion*/
	ADC1->CR2 |=(1U<<30);    //SWSTART
	}


uint32_t adc_read(void){
	/*wait for the conversion until complete*/
    while(!(ADC1->SR & ADC_EOC)){
    	// while this false we stuck here
    }
	/*read converted result*/
    return(ADC1->DR);



}
