#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.h"
#include "OrUtils.h"
#include "OrGpio.h"
#include "OrI2c.h"
#include "OrEmc2305.h"


enum{
    EmcPwmOutput    = 0x2B, 
    EmcFan1Setting  = 0x30,
    EmcFan1Config   = 0x32, 
    EmcTach1        = 0x3E, 
    EmcFan2Setting  = 0x40,
    EmcFan2Config   = 0x42, 
    EmcTach2        = 0x4E,
    EmcFan3Setting  = 0x50,
    EmcFan3Config   = 0x52,
    EmcTach3        = 0x5E,
    EmcFan4Setting  = 0x60,
    EmcFan4Config   = 0x62,
    EmcTach4        = 0x6E,
    EmcFan5Setting  = 0x70,
    EmcFan5Config   = 0x72,
    EmcTach5        = 0x7E,
};


ConvPort convFanTable[] = CONV_FAN_TABLE;
static uint8_t Write(uint16_t address, uint8_t reg, uint8_t value);
//static uint8_t Read(uint16_t address, uint8_t reg, uint8_t *value);
static uint8_t Read2(uint16_t address, uint8_t reg, uint16_t *value);

static uint8_t WritePwm(uint8_t ch, uint8_t val);
static uint8_t ReadRpm(uint8_t ch, uint16_t *val);


static uint8_t data[3];
static bool f1S = false, fStartErr = false;

/*
 * write2 data (2 bytes at once)
 */
uint8_t Write(uint16_t address, uint8_t reg, uint8_t value)
{
    
    
    data[0] = reg;  
    data[1] = value ;    //outputs
    
    OrI2cInitDelay();
    if (!I2C2_Write(address, data, 2)){
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
//uint8_t Read(uint16_t address, uint8_t reg, uint8_t *value)
//{
//    // clear value
//    *value = 0;
//    data[0] = reg;
//    
//    OrI2cInitDelay();
//    if (!I2C2_WriteRead(address, &(data[0]), 1, &(data[1]), 1)){
//        // error
//        return 1;
//    }
//    // wait for the current transfer to complete
//    //while(I2C2_IsBusy( ));
//    if (OrI2c2IsBusy())
//    {
//        return 1; //timeout
//    }
//    if (I2C2_ErrorGet() != I2C_ERROR_NONE)
//    {
//        // error
//        return 1;
//    }
//    *value = data[1];
//    return 0;
//    
//}

/*
 * read2 data (2 bytes at once)
 */
uint8_t Read2(uint16_t address, uint8_t reg, uint16_t *value)
{
    // clear value
    *value = 0;
    data[0] = reg;
    
    OrI2cInitDelay();
    if (!I2C2_WriteRead(address, &(data[0]), 1, &(data[1]), 2)){
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
    *value = data[1]*256 + data[2];
    return 0;
    
}

uint8_t WritePwm(uint8_t ch, uint8_t val)
{
    ConvPort fan = convFanTable[ch - 1];
    uint8_t pwm;
    uint8_t reg;
    
    if ((!ch) || (ch > 17) || (val > 100) ) return -1;
    
    if (ch == 17)
       pwm = (uint32_t)((val*653) >> 8); //PWM[%]*255/100
    else
       pwm = (uint32_t)(((100 - val)*653) >> 8); //PWM[%]*255/100
    
    reg = EmcFan1Setting + (fan.ch - 1)*0x10;
    return Write(fan.address, reg, pwm);
    
    
}

uint8_t ReadRpm(uint8_t ch, uint16_t *val)
{
    ConvPort fan = convFanTable[ch - 1];
    uint16_t rpm;
    uint8_t reg;
    
    if ((!ch) || (ch > 17)) return -1;
    
    reg = EmcTach1 + (fan.ch - 1)*0x10;
    if (Read2(fan.address, reg, &rpm)){
        return -2;
    }
    //rpm >>= 3; // Range = 0b01 
    rpm >>= 2; //Range = 0x00
    rpm = (uint32_t)7864320/rpm;
    if (rpm < 500) rpm = 0;
    
    
    *val = rpm;
    return 0;
}

uint8_t OrEmcSetForcedPwm(uint8_t ch, uint8_t val)
{
    return WritePwm(ch, val);
}

uint8_t OrEmcReadRpm(uint8_t ch, uint16_t *val)
{
    return ReadRpm(ch, val);
}

uint8_t OrEmcInit(bool f9408)
{
    if (Write(0x2E, EmcPwmOutput, 0x1F)) {fStartErr = true; return 1;}          //U26, set Output push pull
    if (Write(0x2F, EmcPwmOutput, 0x1F)) {fStartErr = true; return 1;}          //U30, set Output push pull
    if (Write(0x2C, EmcPwmOutput, 0x1F)) {fStartErr = true; return 1;}          //U34, set Output push pull
    if (Write(0x2D, EmcPwmOutput, 0x1F)) {fStartErr = true; return 1;}          //U38, set Output push pull
    
    if (f9408){
        //initialize Tachometer multiplier
        if (Write(0x2E, EmcFan1Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2E, EmcFan2Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2E, EmcFan3Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2E, EmcFan4Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        
        if (Write(0x2F, EmcFan1Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2F, EmcFan2Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2F, EmcFan3Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        if (Write(0x2F, EmcFan4Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00

        if (Write(0x2C, EmcFan1Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
        /******************************************************************************************/
        if (Write(0x2E, EmcFan1Setting, 0x0)) {fStartErr = true; return 1;}         //U26, 100%
        if (Write(0x2E, EmcFan2Setting, 0x0)) {fStartErr = true; return 1;}         //U26, 100%
        if (Write(0x2E, EmcFan3Setting, 0x0)) {fStartErr = true; return 1;}         //U26, 100%
        if (Write(0x2E, EmcFan4Setting, 0x0)) {fStartErr = true; return 1;}         //U26, 100%
        
        if (Write(0x2F, EmcFan1Setting, 0x0)) {fStartErr = true; return 1;}         //U30, 100%
        if (Write(0x2F, EmcFan2Setting, 0x0)) {fStartErr = true; return 1;}         //U30, 100%
        if (Write(0x2F, EmcFan3Setting, 0x0)) {fStartErr = true; return 1;}         //U30, 100%
        if (Write(0x2F, EmcFan4Setting, 0x0)) {fStartErr = true; return 1;}         //U30, 100%

        if (Write(0x2C, EmcFan1Setting, 0x0)) {fStartErr = true; return 1;}         //U34, 100%
        //if (Write(0x2C, EmcFan2Setting, 0xFF)) {fStartErr = true; return 1;}         //U34, 100%
        //if (Write(0x2C, EmcFan3Setting, 0xFF)) {fStartErr = true; return 1;}         //U34, 100%
        //if (Write(0x2C, EmcFan4Setting, 0xFF)) {fStartErr = true; return 1;}         //U34, 100%

        //if (Write(0x2D, EmcFan1Setting, 0xFF)) {fStartErr = true; return 1;}         //U38, 100%
        //if (Write(0x2D, EmcFan2Setting, 0xFF)) {fStartErr = true; return 1;}         //U38, 100%
        //if (Write(0x2D, EmcFan3Setting, 0xFF)) {fStartErr = true; return 1;}         //U38, 100%
        //if (Write(0x2D, EmcFan4Setting, 0xFF)) {fStartErr = true; return 1;}         //U38, 100%
    }
    if (Write(0x2D, EmcFan5Config, 0x0B)) {fStartErr = true; return 1;}         //U26, Range - 0b00
    if (Write(0x2D, EmcFan5Setting, 0xFF)) {fStartErr = true; return 1;}         //U38, 100%
    fStartErr = false;
    return 0;
}
void OrEmcProc(bool f9408)
{
    if (f1S)
    {
        //uint16_t val = 0;
        f1S = false;
        if (fStartErr)
        {
            OrEmcInit(f9408);
        }
//        if (!Read2(0x2D, EmcTach5, &val)){
//            val >>= 3;
//            SYS_CONSOLE_PRINT("Read Tach5 %u\r\n", 7864320/val);
//        }
            
    }
}
void OrEmcPeriodic(void)
{
    static uint16_t ctr = 0;
    
    ctr++;
    if (ctr > 1000)
    {
        f1S = true;
        ctr = 0;
    }
}

