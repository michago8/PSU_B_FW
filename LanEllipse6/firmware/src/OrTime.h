/* 
 * File:   OrTime.h
 * Author: Michael
 *
 * Created on January 26, 2023, 5:06 PM
 */

#ifndef ORTIME_H
#define	ORTIME_H

#ifdef	__cplusplus
extern "C" {
#endif

#define TIME_PERIODIC 1//1ms                    
    
    void OrTimeInit(void);
    void OrTimeCallback(uintptr_t context);



#ifdef	__cplusplus
}
#endif

#endif	/* ORTIME_H */

