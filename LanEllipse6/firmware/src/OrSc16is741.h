/* 
 * File:   OrSc16is741.h
 * Author: Michael
 *
 * Created on October 14, 2024, 1:12 PM
 */

#ifndef ORSC16IS741_H
#define	ORSC16IS741_H

#ifdef	__cplusplus
extern "C" {
#endif
    enum{Ch_Ardu, Ch_Dfc1, Ch_Dfc2, Ch_Heu};
    
    typedef union{
        struct{
            uint8_t arduOverTemp:1;
            uint8_t arduCritTemp:1;
            uint8_t dfc1OverTemp:1;
            uint8_t dfc1CritTemp:1;
            uint8_t dfc2OverTemp:1;
            uint8_t dfc2CritTemp:1;
            uint8_t heuNotOk:1;
            uint8_t battleShort:1;
            uint8_t spare:2;
        };
        uint8_t val;
    }Sc16Status;
    
    uint8_t OrSc16_Init(uint8_t ch);
    uint8_t OrSc16_Write(uint8_t ch, uint8_t *buf, uint8_t num);
    uint8_t OrSc16_Read(uint8_t ch, uint8_t *buf);
    uint8_t OrSc16_Proc(void);
    //uint8_t OrSc16_IsrHandler(void);
    void OrSc16_Periodic(void);
    uint8_t OrSc16_GetError(uint8_t ch);

    extern Sc16Status sc16Status;

#ifdef	__cplusplus
}
#endif

#endif	/* ORSC16IS741_H */

