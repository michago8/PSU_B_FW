/* 
 * File:   OrGpio.h
 * Author: Michael David
 *
 * Created on April 2, 2014, 10:15 PM
 */

#ifndef ORGPIO_H
#define	ORGPIO_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "GenericTypeDefs.h"
#include "config/LanEllipse6_conf/peripheral/gpio/plib_gpio.h"

// PORT A: 4, 5, 14
// PORT B: 0, 1, 2, 3, 9, 10, 11, 12, 13, 14, 15 (9-15: ANALOG1-7)
// PORT D: 1, 2, 3, 4, 5
// PORT E: 0, 1, 2, 3, 4, 5, 6, 7
    
    
//#define RSS
#define uint8 UINT8
#define uint16 UINT16
#define uint32 UINT32
#define ELEMENT UINT16_VAL
//#define MICROCHIP_BOARD



// Outputs
#define I2C_EN1_TRIS        (TRISDbits.TRISD1)
#define I2C_EN1             (LATDbits.LATD1)
#define I2C_EN2_TRIS        (TRISDbits.TRISD2)
#define I2C_EN2             (LATDbits.LATD2)
#define I2C_EN3_TRIS        (TRISDbits.TRISD3)
#define I2C_EN3             (LATDbits.LATD3)
#define I2C_EN4_TRIS        (TRISDbits.TRISD4)
#define I2C_EN4             (LATDbits.LATD4)
#define I2C_RSTn_TRIS       (TRISDbits.TRISD5)
#define I2C_RSTn            (LATDbits.LATD5)

#define UART_RSTn_TRIS      (TRISEbits.TRISE4)
#define UART_RSTn           (LATEbits.LATE4)
    
#define ANALOG_MUX_S0_TRIS  (TRISEbits.TRISE5)
#define ANALOG_MUX_S0       (LATEbits.LATE5)
#define ANALOG_MUX_S1_TRIS  (TRISEbits.TRISE6)
#define ANALOG_MUX_S1       (LATEbits.LATE6) 
#define ANALOG_MUX_S2_TRIS  (TRISEbits.TRISE7)
#define ANALOG_MUX_S2       (LATEbits.LATE7)
    
#define RMS_MUX_S0_TRIS     (TRISBbits.TRISB0)
#define RMS_MUX_S0          (LATBbits.LATB0)
#define RMS_MUX_S1_TRIS     (TRISBbits.TRISB1)
#define RMS_MUX_S1          (LATBbits.LATB1) 
#define RMS_MUX_S2_TRIS     (TRISBbits.TRISB2)
#define RMS_MUX_S2          (LATBbits.LATB2)
#define RMS_MUX_S3_TRIS     (TRISBbits.TRISB3)
#define RMS_MUX_S3          (LATBbits.LATB3) 
#define RMS_FREQ_MUX_S0_TRIS (TRISAbits.TRISA4)
#define RMS_FREQ_MUX_S0     (LATAbits.LATA4)
#define RMS_FREQ_MUX_S1_TRIS (TRISAbits.TRISA5)
#define RMS_FREQ_MUX_S1     (LATAbits.LATA5)
    
// Inputs    
#define IRQn_RS485_1_TRIS   (TRISEbits.TRISE0)	
#define IRQn_RS485_1        (PORTEbits.RE0)
#define IRQn_RS485_2_TRIS   (TRISEbits.TRISE1)	
#define IRQn_RS485_2        (PORTEbits.RE1)
#define IRQn_RS485_3_TRIS   (TRISEbits.TRISE2)	
#define IRQn_RS485_3        (PORTEbits.RE2)
#define IRQn_RS485_4_TRIS   (TRISEbits.TRISE3)	
#define IRQn_RS485_4        (PORTEbits.RE3)
    

#define IO4_INTn_TRIS       (TRISAbits.TRISA14)	
#define IO4_INTn            (PORTAbits.RA14)


    
//TBD Test
#ifndef MICROCHIP_BOARD
//#define C5_TRIS 			(TRISGbits.TRISG0)	// Ref C5 - BIT_CONT_2_COMB
//#define C5_IO				(LATGbits.LATG0)
#endif
    

//#define SPI1_LE0_TRIS        (TRISEbits.TRISE3)
//#define SPI1_LE0_IO          (LATEbits.LATE3)
    
  
//ADC
//#define AN0_TRIS                    (TRISBbits.TRISB0)



#define LED_ON          0
#define LED_OFF         1
    
    

void    OrGpioKeyScan(void);
void    OrGpioInit(void);
void    OrGpioSetResetDly(void);
//bool    OrGpioPeriodicInit(void);
void    OrGpioPeriodic(void);
void    OrGpioProc(void);


#ifdef	__cplusplus
}
#endif

#endif	/* ORGPIO_H */

