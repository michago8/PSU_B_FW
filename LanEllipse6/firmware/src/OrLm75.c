#include "OrGpio.h"
#include "OrLm75.h"
#include "peripheral/i2c/master/plib_i2c2_master.h"
#include "OrI2c.h"
#define LM_ADDRESS 0x4F
#define LM_TEMP 0
#define LM_CONFIG 1


static uint8_t Write(uint8_t reg, uint8_t value);
static uint8_t Read(uint8_t reg, uint8_t *value);
static uint8_t data[3];
/*
 * write2 data (2 bytes at once)
 */
uint8_t Write(uint8_t reg, uint8_t value)
{
    
    
    data[0] = reg;  
    data[1] = value ;    //outputs
    
    OrI2cInitDelay();
    if (!I2C2_Write(LM_ADDRESS, data, 2)){
        // error
        return 1;
    }
    // wait for the current transfer to complete
    //while(I2C2_IsBusy( ));
    if (OrI2c2IsBusy())
    {
        return 1; //timeout
    }
    if (I2C2_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 1;
    }
    return 0;
    
}
/*
 * read data (1 bytes)
 */
uint8_t Read(uint8_t reg, uint8_t *value)
{
    // clear value
    *value = 0;
    data[0] = reg;
    
    OrI2cInitDelay();
    if (!I2C2_WriteRead(LM_ADDRESS, &(data[0]), 1, &(data[1]), 1)){
        // error
        return 1;
    }
    // wait for the current transfer to complete
    //while(I2C2_IsBusy( ));
    if (OrI2c2IsBusy())
    {
        return 1; //timeout
    }
    if (I2C2_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 1;
    }
    *value = data[1];
    return 0;
    
}

uint8_t OrLm75_Init(void)
{
    if (Write(LM_CONFIG, 0x2)) return 1; //Interrupt mode, polarity active low
    return 0;
}

uint8_t OrLm75_Read(uint8_t *val)
{
    uint8_t temp;
    if (Read(LM_TEMP, &temp)) return 1;
    *val = (temp < 0)? 0: temp;
    return 0;
}

