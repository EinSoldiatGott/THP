/*
 * uart.c
 *
 *  Created on: 17/06/2015
 *      Author: EinSoldiatGott
 */

#include "uart.h"



void envia_uart(uint8 *escritura_UART, uint8 len){

	uint8 i;
	for(i=0;i<len;i++){
		UCA0TXBUF=escritura_UART[i];
		IE2 |= UCA0TXIE;									//Habilita int de TX en uar
		//IFG2& =~UCA0TXIFG;							//Limpia bandera de Int TX //No se encesita por que UCA0TXIFG is automatically reset when the transfer starts
		_BIS_SR(LPM0_bits + GIE);				// Entra en LPM0 y habilita interrupciones = ACLK = enc; SMCL = enc
	}
}

void espera_demanda_uart(void){
	IFG2&=~UCA0RXIFG;									//Limpia la interrupción
	IE2 |= UCA0RXIE;									//Habilita int de RX en uart
	_BIS_SR(LPM0_bits + GIE);							// Duerme hasta que la UART lo despierte
}



