#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.h"
#include "OrUtils.h"
#include "OrGpio.h"
#include "OrI2c.h"
#include "OrDs1682.h"


#define DS_ADDRESS 0x6B
static uint8_t Read4(uint32_t *value);
static uint8_t Write4(uint32_t value);
static uint8_t data[5];



/*
 * read2 data (2 bytes at once)
 */
uint8_t Read4(uint32_t *value)
{
    // clear value
    *value = 0;
    data[0] = 0x5;//reg
    
    OrI2cInitDelay();
    if (!I2C2_WriteRead(DS_ADDRESS, &(data[0]), 1, &(data[1]), 4)){
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
    *value = data[1] + data[2]*256 + ((data[3] + data[4]*256) << 16);
    return 0;
    
}

/*
 * read2 data (2 bytes at once)
 */
uint8_t Write4(uint32_t value)
{
    // clear value
    memcpy(&data[1], &value, 4);
    data[0] = 0x5;//reg
    
    OrI2cInitDelay();
    if (!I2C2_Write(DS_ADDRESS, data, 5)){
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


uint32_t OrDsRead(void)
{
   uint32_t value;
   Read4(&value);
   return value; 
}

void OrDsWrite(uint32_t value)
{
   Write4(value); 
}


