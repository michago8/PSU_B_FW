
//#include "HardwareProfile.h"
#include "definitions.h"
#include "OrGpio.h"
#include "OrTime.h"
#include "OrAdc.h"

#define GPIO_TICK_RATE  10// 10ms



void UpdateLeds(void);
void SendLeds(void);
static uint16_t resetDly = 0;
static uint8_t f5sec = false;




/*
 * GpioPeriodic function 
 */
void OrGpioPeriodic(void)
{
    static uint8_t ctr50ms = 0; 
    static uint16_t ctr5sec = 0;
    
    ctr50ms += TIME_PERIODIC;
    ctr5sec += TIME_PERIODIC;
    if ((ctr50ms) == 50) 
    {
        ctr50ms = 0;
        //OrGpioKeyScan();
    }
    
    if ((ctr5sec) == 5000)
    {
        ctr5sec = 0;
        f5sec = true;
    }
    
    
    if (resetDly > TIME_PERIODIC) resetDly -= TIME_PERIODIC;
    else if (resetDly == TIME_PERIODIC)
    {
        resetDly = 0;
        SYS_RESET_SoftwareReset();
    }
    
}
/*
 *  Set Reset Delay
 */
void    OrGpioSetResetDly(void)
{
    resetDly = 500; // 0.5 Second
}
/*
 *  initialize the GPIO state
 */
void    OrGpioInit(void)
{
    AD1PCFG = 0x01FF; //AN9-AN15
    
    //Outputs
    I2C_EN1_TRIS = 0;
    I2C_EN1 = 0;
    I2C_EN2_TRIS = 0;
    I2C_EN2 = 0;
    I2C_EN3_TRIS = 0;
    I2C_EN3 = 0;
    I2C_EN4_TRIS = 0;
    I2C_EN4 = 0;
    I2C_RSTn_TRIS = 1;
    //I2C_RSTn = 1; 
    UART_RSTn_TRIS = 0;
    UART_RSTn = 1; 
    
    ANALOG_MUX_S0_TRIS = 0;
    ANALOG_MUX_S0 = 0;
    ANALOG_MUX_S1_TRIS = 0;
    ANALOG_MUX_S1 = 0;
    ANALOG_MUX_S2_TRIS = 0;
    ANALOG_MUX_S2 = 0;
    
    RMS_MUX_S0_TRIS = 0;
    RMS_MUX_S0 = 0;
    RMS_MUX_S1_TRIS = 0;
    RMS_MUX_S1 = 0;
    RMS_MUX_S2_TRIS = 0;
    RMS_MUX_S2 = 0;
    RMS_MUX_S3_TRIS = 0;
    RMS_MUX_S3 = 0;
    RMS_FREQ_MUX_S0_TRIS = 0;
    RMS_FREQ_MUX_S0 = 0;
    RMS_FREQ_MUX_S1_TRIS = 0;
    RMS_FREQ_MUX_S1 = 0;
    
    //Inputs
    IRQn_RS485_1_TRIS = 1;
    IRQn_RS485_2_TRIS = 1;
    IRQn_RS485_3_TRIS = 1;
    IRQn_RS485_4_TRIS = 1;
    
    IO4_INTn_TRIS = 1;
    
//    SW3_TRIS = 1;
//    SW4_TRIS = 1;
//    SW5_TRIS = 1;

    // TBD Test
#ifdef MICROCHIP_BOARD
    CNPUESET = 0x00098000;        // Turn on weak pull ups on CN15, CN16, CN19 (RD6, RD7, RD13), which is connected to buttons on PIC32 Starter Kit boards
#endif
    //CNPUESET = 0x0009F0FC;      // Turn on weak pull ups CN2-7, 12-16, 19 1001,1111,0000,1111,1100b
    
}



void    OrGpioProc(void)
{
    //UpdateLeds();
    if (f5sec){
        f5sec = false;
        //SYS_CONSOLE_PRINT("int1 = %u, int2 = %u\r\n", RF_INT1_Get(), RF_INT2_Get());
        //SYS_CONSOLE_PRINT("bit6,7:%u,%u\r\n", leds.bits.b6, leds.bits.b7);
        //SYS_CONSOLE_PRINT("N6V_OV, P15V_UV, P6V_UV, VCC_UV, _3V3_UV = %u, %u, %u, %u, %u\r\n", 
        //        N6V_OV, P15V_UV, P6V_UV, VCC_UV, _3V3_UV);
    }
}

