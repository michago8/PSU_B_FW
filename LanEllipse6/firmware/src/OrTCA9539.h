/* 
 * File:   OrTCA9539.h
 * Author: Michael
 *
 * Created on August 21, 2023, 6:41 PM
 */

#ifndef ORTCA9539_H
#define	ORTCA9539_H

#ifdef	__cplusplus
extern "C" {
#endif
    uint8_t OrTcaInit(bool isRst);
    uint8_t OrTcaWriteOutput(uint8_t address, uint8_t ch, uint16_t value);
    uint8_t OrTcaReadInput(uint8_t address, uint8_t ch, uint16_t* value);
    void OrTcaPeriodic(void);


#ifdef	__cplusplus
}
#endif

#endif	/* ORTCA9539_H */

