/*
 * uart.h
 *
 *  Created on: Jul 15, 2024
 *      Author: foura
 */

#ifndef UART_H_
#define UART_H_
#include <stdint.h>

#include "STM32F446XX.h"

void uart2_tx_init(void);
char uart2_read(void);
void uart2_rxtx_init(void);

void uart2_write(int ch);
int __io_putchar(int ch);


#endif /* UART_H_ */
