/*
 * uart.h
 *
 *  Created on: 17/06/2015
 *      Author: EinSoldiatGott
 */

/*
  *
 * Constantes y definciones
 * retornoCarro
 */

#include <msp430g2553.h>
#include "tipos_var.h"

#ifndef UART_H_
#define UART_H_


//Variables
static const  uint8 retornoCarro[]={0x0D,0X0A};
uint8 buffer_lectura_UART[15];
uint8 buffer_escritura_UART[3];



void envia_uart(uint8 *texto, uint8 len);
void espera_demanda_uart(void);

#endif /* UART_H_ */
