/* 
 * File:   OrI2c.h
 * Author: Michael
 *
 * Created on August 7, 2024, 6:53 PM
 */

#ifndef ORI2C_H
#define	ORI2C_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
    void OrI2cInitDelay(void);
    void OrI2cInitDelayVal(uint8_t val);
    bool OrI2c1IsBusy(void);
    bool OrI2c2IsBusy(void);
    bool OrI2c3IsBusy(void);
    bool OrI2c4IsBusy(void);
    bool OrI2c5IsBusy(void);
    void OrI2cPeriodic(void);

#ifdef	__cplusplus
}
#endif

#endif	/* ORI2C_H */

