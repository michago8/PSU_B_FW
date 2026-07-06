#include <string.h>
#include <stdio.h>
//#include "HardwareProfile.h"
#include "definitions.h"
#include "peripheral/adc/plib_adc.h"
#include "OrGpio.h"
#include "OrAdc.h"

/*
 * convert raw ADC in 10bit resolution to mV value (3.3V VCC reference)
 */
uint16 OrAdcTo_mV(uint16 raw)
{
    return ((raw*3300) >> 10);
}
/*
 *  ADC Read
 */
uint16_t OrAdcRead(uint8_t channel)
{
    uint16_t ADCValue;
    // to configure the sampling channel we need to stop the ADC module
    ADC_Disable();
    ADC_InputSelect(ADC_MUX_A, channel, ADC_INPUT_NEGATIVE_VREFL );
    ADC_Enable();
    ADC_SamplingStart();
    while(!ADC_ResultIsReady());
    ADCValue = ADC1BUF0;
    
    
    /*uint16_t ADCValue;
	AD1CON1bits.SAMP = 1; //start sampling
    while (!(AD1CON1 & 0x0001)); // conversion done?
    
    ADCValue = ADC1BUF0; // yes then get ADC value */
//    M_DISABLE_INTERRUPTS;
//	// set channels 
//	AD1CHS0  		 = channel;
//	//AD2CHS0		 = channel2;
//
//	// start sampling
//	AD1CON1bits.SAMP = 1;
//	//AD2CON1bits.SAMP = 1;
//
//
//	// wait for end of conversion
//	while( !AD1CON1bits.DONE )
//		;
//	//while( !AD2CON1bits.DONE )
//	//	;
//	AD1CON1bits.DONE = 0;
//	// read values 
//	*value = ADC1BUF0;
//	//value2 = AD2BUF0;
//	M_ENABLE_INTERRUPTS;

    return ADCValue;

}

/*
 * ADC Initialize
 */
/*void OrAdcInit( void )												    
{
    AD1PCFG = 0xFFFE; // select AN0 as Analog input
    AN0_TRIS = 1; //input
	AD1CHS = 0;// select channel AN0, minus is GND 
	AD1CON1 = 0x00E0; //SSRC = 111 ,counter ends sampling and starts converting
	AD1CON2 = 0; //reference VCC
	AD1CON3 = 0x0403; // 4 Tad, Tad = 8*Tpb
	//AD1CON1bits.ADON = 1; // turn on the ADC
//	// 10 bit resolution
//	AD1CON1bits.AD12B = 0;
//	//AD2CON1bits.AD12B = 0;
//
//	// reference source (Vref+,Vss)
//	AD1CON2bits.VCFG  = 0;
//	//AD2CON2bits.VCFG	= 1;
//
//	// analog convesion clock (Tad = (ADCS+1)xTcy = 3*25nS = 75nS(min)).
//	AD1CON3bits.ADCS  = 2;
//	//AD2CON3bits.ADCS	= 2;
//
//	// sample time 3 Tad;
//	AD1CON3bits.SAMC  = 3;
//	//AD2CON3bits.SAMC	= 3;
//
//	// select port pins as analog inputs , an 0-7,21.
//	AD1PCFGL		  = ~0x00ff;
//	AD1PCFGH		  = ~0x20;
//
//	//	internal counter end sampling and start converting.
//	AD1CON1bits.SSRC  = 0x7;
//	//AD2CON1bits.SSRC	= 0x7;
//
//	AD1CSSL  		  = 0;
//	//AD2CSSL		  = 0;
//
//	// turn ADC ON	 
//	AD1CON1bits.ADON  = 1;
}
*/
 