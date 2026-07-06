#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.h"
#include "OrGpio.h"
#include "OrI2c.h"
#include "Or24Fc512.h"
#include "OrUtils.h"
#include "OrOp.h"
#define ADDRESS_24 0x50
#define PAGE_24 128
#define DATA_24_SIZE 30
#define CALIB_X_SIZE 7 //in uint16_t



static uint8_t Write(uint16_t memAdd, uint8_t *wdata, uint8_t len);
static uint8_t Read(uint16_t memAdd, uint8_t *data, uint8_t len);
static uint8_t data[DATA_24_SIZE + 2];
/*
 * write data 
 */
uint8_t Write(uint16_t memAdd, uint8_t *wdata, uint8_t len)
{   
    data[0] = memAdd >> 8;
    data[1] = memAdd & 0xFF;
    memcpy(data+2, wdata, len);
    OrI2cInitDelayVal(10);
    if (!I2C3_Write(ADDRESS_24, data, len+2)){
        // error
        return 1;
    }
    // wait for the current transfer to complete
    //while(I2C2_IsBusy( ));
    if (OrI2c3IsBusy())
    {
        return 1; //timeout
    }
    if (I2C3_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 1;
    }
    return 0;
    
}

/*
 * write2 data TCA (2 bytes at once)
 */
static uint8_t Read(uint16_t memAdd, uint8_t *rdata, uint8_t len)
{
    // clear value
    uint8_t add[2];
    add[0] = memAdd >> 8;
    add[1] = memAdd & 0xFF;
    
    OrI2cInitDelayVal(10);
    if (!I2C3_WriteRead(ADDRESS_24, add, 2, rdata, len)){
        // error
        return 1;
    }
    // wait for the current transfer to complete
    //while(I2C2_IsBusy( ));
    if (OrI2c3IsBusy())
    {
        return 1; //timeout
    }
    if (I2C3_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 1;
    }
    return 0;
    
}

uint8_t Or24Read(void)
{
    // check if error in reading or PSU configuration not valid
    if (Read(0, data, DATA_24_SIZE) || ((data[0] != 1) && (data[0] != 2)))
    {
        SYS_CONSOLE_PRINT("read data[0,1]:%u,%u\r\n", data[0], data[1]);
        return 1;
    }
    memcpy(&RegsTable[Regs_EepromPsuConf], data, DATA_24_SIZE);
    return 0;
}
uint8_t Or24Write()
{
    uint8_t wdata[DATA_24_SIZE];
    memcpy(wdata, &RegsTable[Regs_EepromPsuConf], DATA_24_SIZE);
    
    if (Write(0, wdata, DATA_24_SIZE))
        return 1;
    return 0;
}

uint16_t CheckSum(uint16* vec, uint8_t len)
{
    uint8_t i;
    uint16_t sum = 0;
    for(i = 0; i<len; i++){
        sum += vec[i];
    }
    return sum;
}
uint8_t Or24ReadCalib(void)
{
    uint16 buf[CALIB_X_SIZE] = {0};
    // check if error in reading or PSU configuration not valid
    if (Read(128, (uint8_t*)(buf), CALIB_X_SIZE*2) || (buf[CALIB_X_SIZE - 1] != CheckSum(buf, CALIB_X_SIZE - 1)))
    {
        SYS_CONSOLE_PRINT("read calibration fail\r\n");
        return 1;
    }
    
    memcpy(calibX.x, buf, (CALIB_X_SIZE - 1)*2);
    return 0;
}

uint8_t Or24WriteCalib(void)
{
    uint16 buf[CALIB_X_SIZE] = {0};
    buf[CALIB_X_SIZE - 1] = CheckSum(calibX.x, CALIB_X_SIZE - 1);
    memcpy(buf, calibX.x, (CALIB_X_SIZE - 1)*2);
    if (Write(128, (uint8_t*)(buf), CALIB_X_SIZE*2))
        return 1;
    return 0;
}


