#include <stdbool.h>
#include "OrI2c.h"



#define I2C2_EN
#define I2C3_EN

#ifdef I2C2_EN
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.h"
#endif
#ifdef I2C3_EN
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.h"
#endif

#define I2C_TIMEOUT 5

static uint8_t delay = 0;

void OrI2cInitDelayVal(uint8_t val)
{
    delay = val;
}
void OrI2cInitDelay(void)
{
    delay = I2C_TIMEOUT; 
}
bool OrI2c1IsBusy(void)
{
    return 0;
}
// this function is busy waiting and will return 0 - OK, 1 - Timeout
// the function should be call after the delay initiation.
bool OrI2c2IsBusy(void)
{
#ifdef I2C2_EN
    // wait for the current transfer to complete
    while(I2C2_IsBusy( ))
    {
        if (!delay)
        {
            I2C2_TransferAbort();
            return 1;
        }
    }
#endif
    return 0;
}
bool OrI2c3IsBusy(void)
{
#ifdef I2C3_EN
    // wait for the current transfer to complete
    while(I2C3_IsBusy( ))
    {
        if (!delay)
        {
            I2C3_TransferAbort();
            return 1;
        }
    }
#endif
    return 0;
}
bool OrI2c4IsBusy(void)
{
    return 0;
}
bool OrI2c5IsBusy(void)
{
    // wait for the current transfer to complete
#ifdef I2C5_EN
    while(I2C5_IsBusy( ))
    {
        if (!delay)
        {
            I2C5_TransferAbort();
            return 1;
        }
    }
#endif
    return 0;
}
void OrI2cPeriodic(void)
{
    if (delay) delay--;
}

