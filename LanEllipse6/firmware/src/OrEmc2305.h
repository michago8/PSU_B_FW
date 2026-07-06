/* 
 * File:   OrEmc2305.h
 * Author: Michael
 *
 * Created on September 4, 2024, 1:50 PM
 */

#ifndef OREMC2305_H
#define	OREMC2305_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "OrUtils.h"
    uint8_t OrEmcInit(bool f9408);
    void OrEmcProc(bool f9408);
    void OrEmcPeriodic(void);
    uint8_t OrEmcSetForcedPwm(uint8_t ch, uint8_t val);
    uint8_t OrEmcReadRpm(uint8_t ch, uint16_t *val);

    extern ConvPort convFanTable[];
#ifdef	__cplusplus
}
#endif

#endif	/* OREMC2305_H */

