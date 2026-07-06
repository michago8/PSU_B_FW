/* 
 * File:   OrTmp117.h
 * Author: Michael
 *
 * Created on August 8, 2024, 9:49 AM
 */

#ifndef ORTMP117_H
#define	ORTMP117_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdint.h>
    
    void OrTmp117_Init(void);
    uint8_t OrTmp117_Read(int8_t* val);
    //void OrTmp117_Periodic(void);
    void OrTmp117_Proc(void);
    int8_t OrTmp117_Get(uint8_t ch);
    int8_t OrTmp117_GetHottest(void);
    uint8_t OrTmp117_GetError(uint8_t ch);


#ifdef	__cplusplus
}
#endif

#endif	/* ORTMP117_H */

