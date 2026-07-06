#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.h"
#include "OrGpio.h"
#include "OrI2c.h"
#include "OrTCA9539.h"
//#define TCA_ADDRESS 0x74
#define I2C_TIMEOUT 10//mS
uint8_t data[3];
enum{
    TCA_INPUT0 = 0, 
    TCA_INPUT1 = 1,
    TCA_OUTPUT0 = 2, 
    TCA_OUTPUT1 = 3,
    TCA_CONFIG0 = 6,
    TCA_CONFIG1 = 7,
};

static uint8_t Write2(uint16_t address, uint8_t ch, uint8_t reg, uint16_t value);
static uint8_t Read2(uint16_t address, uint8_t ch, uint8_t reg, uint16_t *value);



/*
 * write2 data TCA (2 bytes at once)
 */
uint8_t Write2(uint16_t address, uint8_t ch, uint8_t reg, uint16_t value)
{
    I2C_EN1 = (ch == 1)? 1: 0;
    I2C_EN2 = (ch == 2)? 1: 0;
    I2C_EN3 = (ch == 3)? 1: 0;
    I2C_EN4 = (ch == 4)? 1: 0;
    
    if ((ch < 1)||(ch > 4))
    {
        //error
        return 1;
    }
    
    data[0] = reg;  
    data[1] = value & 0xFF;            //outputs
    data[2] = value >> 8;               //outputs
    
    OrI2cInitDelay();
    if (!I2C2_Write(address, data, 3)){
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
 * write2 data TCA (2 bytes at once)
 */
static uint8_t Read2(uint16_t address, uint8_t ch, uint8_t reg, uint16_t *value)
{
    I2C_EN1 = (ch == 1)? 1: 0;
    I2C_EN2 = (ch == 2)? 1: 0;
    I2C_EN3 = (ch == 3)? 1: 0;
    I2C_EN4 = (ch == 4)? 1: 0;
    
    if ((ch < 1)||(ch > 4))
    {
        //error
        return 1;
    }
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
    *value = data[1] + data[2]*256;
    return 0;
    
}

/*
 * Init the TCAs to output
 */
uint8_t OrTcaInit(bool isRst)
{
    //uint8_t error = 0;
    //volatile uint8_t i;
    
    if (!isRst)
    {
        //I2C_RSTn_TRIS = 0;
        //I2C_RSTn = 1;
    }
    
    if (Write2(0x74, 1, TCA_CONFIG0, 0)) return 1;          //U75, output
    if (Write2(0x74, 1, TCA_OUTPUT0, 0)) return 1;  
    if (Write2(0x75, 1, TCA_CONFIG0, 0)) return 1;          //U76, output
    if (Write2(0x75, 1, TCA_OUTPUT0, 0)) return 1;  
    if (Write2(0x76, 1, TCA_CONFIG0, 0x2000)) return 1;     //U77, output, P15 input
    if (Write2(0x76, 1, TCA_OUTPUT0, 0)) return 1;  
    if (Write2(0x77, 1, TCA_CONFIG0, 0xFFFF)) return 1;     //U78, input, interrupt
    //if (Write2(0x77, 1, TCA_OUTPUT0, 0)) return 1;  
    
    if (!isRst){
        if (Write2(0x74, 2, TCA_CONFIG0, 0x6000)) return 1;     //U79, output, P15-P16: input, 
        if (Write2(0x74, 2, TCA_OUTPUT0, 0)) return 1;  
    }
    if (Write2(0x75, 2, TCA_CONFIG0, 0)) return 1;          //U80, output
    if (Write2(0x75, 2, TCA_OUTPUT0, 0)) return 1;  
    if (Write2(0x76, 2, TCA_CONFIG0, 0xF470)) return 1;     //U81, P0-P3, P7, P10-P11, P13: output, P4-P6, P12, P14-P17: input,
    if (Write2(0x76, 2, TCA_OUTPUT0, 0)) return 1;  
    if (Write2(0x77, 2, TCA_CONFIG0, 0xFFFF)) return 1;          //U146, input
    //if (Write2(0x77, 2, TCA_OUTPUT0, 0)) return 1;  //output
    
    if (Write2(0x74, 3, TCA_CONFIG0, 0xFFFF)) return 1;          //U177, input
//    if (Write2(0x74, 3, TCA_OUTPUT0, 0)) return 1;  //output
//    if (Write2(0x75, 3, TCA_CONFIG0, 0)) return 1;  //output
//    if (Write2(0x75, 3, TCA_OUTPUT0, 0)) return 1;  //output
//    if (Write2(0x76, 3, TCA_CONFIG0, 0)) return 1;  //output
//    if (Write2(0x76, 3, TCA_OUTPUT0, 0)) return 1;  //output
//    //if (Write2(0x77, 3, TCA_CONFIG0, 0)) return 1;  //output
//    
//    if (Write2(0x74, 4, TCA_CONFIG0, 0)) return 1;  //output
//    if (Write2(0x74, 4, TCA_OUTPUT0, 0)) return 1;  //output
//    if (Write2(0x75, 4, TCA_CONFIG0, 0)) return 1;  //output
//    if (Write2(0x75, 4, TCA_OUTPUT0, 0)) return 1;  //output
//    if (Write2(0x76, 4, TCA_CONFIG0, 0xFFFF)) return 1;  //input
//    if (Write2(0x77, 4, TCA_CONFIG0, 0)) return 1;  //output
//    if (Write2(0x77, 4, TCA_OUTPUT0, 0x00C0)) return 1;  //output
    // no error
    return 0;
    
}


/*
 * read data from inputs
 */
uint8_t OrTcaWriteOutput(uint8_t address, uint8_t ch, uint16_t value)
{
    return Write2((uint16_t)address, ch, TCA_OUTPUT0, value);
        
}

/*
 * read data from inputs
 */
uint8_t OrTcaReadInput(uint8_t address, uint8_t ch, uint16_t* value)
{
    return Read2((uint16_t)address, ch, TCA_INPUT0, value);
        
}



