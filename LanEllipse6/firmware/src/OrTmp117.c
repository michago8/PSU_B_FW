#include "OrGpio.h"
#include "OrTmp117.h"
#include "peripheral/i2c/master/plib_i2c2_master.h"
#include "OrI2c.h"
#define TEMP_RESULT 0
#define TMP117_ADDRESS 0x48

static uint8_t Read(uint8_t *reg, uint16_t *value);
static int8_t temp[2] = {0}, error[2] = {0};
//static bool f1sec = false;

/*
 * write data TCA
 */
uint8_t Read(uint8_t *reg, uint16_t *value)
{
    uint8_t data[2];
    uint16_t address;
    
    I2C_EN1 = 0;
    I2C_EN2 = 1;
    I2C_EN3 = 0;
    I2C_EN4 = 0;
    
    
    address = TMP117_ADDRESS;
    OrI2cInitDelay();
    if (!I2C2_WriteRead(address, reg, 1, data, 2)){
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
    
    *value = data[0]*256 + data[1];  
    
    
    
    
    return 0;
    
}


/*
 * Init Tmp117
 */
void OrTmp117_Init(void)
{
    //uint8_t i;
    // the init state of registers is suitable (1Sec 8 Averages)
    // first read of all channels to see if communication is good.
//    for (i = 0; i<2 ; i++)
//    {
//        error[i] = OrTmp117_Read(i+1, &(temp[i]));
//    }
}


/*
 * 
 */
uint8_t OrTmp117_Read(int8_t* val)
{
    int16_t value;
    uint8_t reg = TEMP_RESULT;
    if (Read(&reg, (uint16_t*)&value))
    {
        return 1;
    }
    value >>= 7; //Arithmetic Shift Left
    value = value > 127? 127: value;
    value = value < 0 ? 0: value;
    *val = value; 
    return 0;
    
}

//void OrTmp117_Periodic(void)
//{
//    f1sec = true;
//}

void OrTmp117_Proc(void)
{         
    error[0] = OrTmp117_Read(&(temp[0]));
}

int8_t OrTmp117_Get(uint8_t ch)
{
    int8_t i;
    i = ch - 1;
    if (i<2)
        return temp[i];
    else
        return 0;
}

int8_t OrTmp117_GetHottest(void)
{
    int8_t Hottest = -128, i;
    for(i=0;i<2;i++)
    {
        if (temp[i] > Hottest)
            Hottest = temp[i];
    }
    return Hottest;
}

uint8_t OrTmp117_GetError(uint8_t ch)
{
    return error[ch - 1];
}

