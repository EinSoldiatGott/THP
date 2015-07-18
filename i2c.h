#include <msp430.h>
#include "tipos_var.h"
//#include "uart.h"

#ifndef I2C_H
#define I2C_H

#define duerme 	_BIS_SR(LPM0_bits + GIE)
#define despierta  LPM0_EXIT							//Despierta y sigue con el resto del c�digo

#define ocupado_I2C UCB0STAT & UCBBUSY

#define registro_I2C 	buffer_escritura_I2C[0]
#define valor_I2C 		buffer_escritura_I2C[1]


//Variables
uint8 buffer_lectura_I2C[15];
uint8 buffer_escritura_I2C[3];
uint8 i_I2C;
uint8 lar_I2C;

//Uso local
void preparaInterrupci�nTxI2C(void);
void preparaInterrupci�nRxI2C(void);
void detieneInterrupcionesI2C(void);

//P�blicas
void escribeI2C(uint8 dir, uint8 larg);
void leeI2C(uint8 dir,  uint8 larg);

inline void  rutildeTX(void);
inline bool rutildeRX(void);

#endif
