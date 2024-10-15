
#ifndef UART_H_
#define UART_H_

#include "STM32F446XX.h"
#include <stdint.h>


void uart_tx_init(void);
char uart_read(void);
void uart_rxtx_init(void);




#endif /* UART_H_ */
