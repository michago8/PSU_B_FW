/* 
 * File:   OrAdc.h
 * Author: Michael
 *
 * Created on December 7, 2022, 8:14 PM
 */

#ifndef ORADC_H
#define	ORADC_H

#ifdef	__cplusplus
extern "C" {
#endif
    #define AN1     ADC_INPUT_POSITIVE_AN9
    #define AN2     ADC_INPUT_POSITIVE_AN10
    #define AN3     ADC_INPUT_POSITIVE_AN11
    #define AN4     ADC_INPUT_POSITIVE_AN12
    #define AN5     ADC_INPUT_POSITIVE_AN13
    #define AN6     ADC_INPUT_POSITIVE_AN14
    #define AN7     ADC_INPUT_POSITIVE_AN15

    uint16_t OrAdcRead(uint8_t channel);
    //void OrAdcInit(void);
    uint16_t OrAdcTo_mV(uint16_t raw);


#ifdef	__cplusplus
}
#endif

#endif	/* ORADC_H */

