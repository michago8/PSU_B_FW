/* 
 * File:   OrParser.h
 * Author: Michael
 *
 * Created on November 27, 2023, 4:14 PM
 */

#ifndef ORPARSER_H
#define	ORPARSER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
#include "OrUtils.h"
    
    

    void OrParserInit(void);
    void OrParserPeriodic(void);
    int8_t OrModbusHandler(uint8_t *msgIn, uint8_t len, uint8_t *msgOut);

    extern uint16_t RegsTable[SIZE_OF_TABLE];

#ifdef	__cplusplus
}
#endif

#endif	/* ORPARSER_H */

