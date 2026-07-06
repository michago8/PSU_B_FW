#include "definitions.h"
#include "config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.h"
#include "OrUtils.h"
#include "OrGpio.h"
#include "OrParser.h"
#include "OrI2c.h"
#include "app.h"
#include "OrSc16is741.h"
#define SC16_ARDU   0x4D
#define SC16_DFC1   0x4C
#define SC16_DFC2   0x49
#define SC16_HEU    0x4A
#define MSG_LENGTH  1
#define SC16_TIMEOUT    60000 //ms = 1 min.

#define REG(x) (x << 3) 
enum {
   SC16_RHR = 0,    // R
   SC16_THR = 0,    // W
   SC16_IER,
   SC16_FCR,        // W
   SC16_IIR = 2,    // R
   SC16_LCR,
   SC16_MCR,
   SC16_LSR,
   SC16_MSR,        // R
   SC16_SPR,
   SC16_TCR = 6,    //  These registers are accessible only when MCR[2] = 1 and EFR[4] = 1.
   SC16_TLR,        //  These registers are accessible only when MCR[2] = 1 and EFR[4] = 1.
   SC16_TXLVL,
   SC16_RXLVR,
   SC16_RESERVED = 0x0D,
   SC16_RESET,
   SC16_EFCR,
           
   SC16_DLL = 0,    //  The special register set is accessible only when LCR[7] = 1 and not 0xBF.
   SC16_DLH,        //  The special register set is accessible only when LCR[7] = 1 and not 0xBF.
   SC16_EFR,        //  Enhanced Feature Registers are only accessible when LCR = 0xBF. 
   
};

uint8_t Parse(uint8_t ch, uint8_t * rxbuf, uint8_t len, uint8_t * txbuf);

const static uint8_t ChTable[] = { SC16_ARDU, SC16_DFC1, SC16_DFC2, SC16_HEU};
Sc16Status sc16Status = {.val = 0};
static bool rx485_422[] = {false, false, false, false};
static uint8_t rxBuf[64] = {0}, txBuf[64] = {0}, error[4] = {0};
static uint16_t timeOut[] = {SC16_TIMEOUT, SC16_TIMEOUT, SC16_TIMEOUT, SC16_TIMEOUT};
static char str[70];
static uint8_t data[10];

uint8_t OrSc16_Init(uint8_t ch)
{
    uint8_t data[2], address, i, len;
    const uint8_t *ptrRegs, *ptrData;
    const static uint8_t InitReg485[] =    {   SC16_LCR,  SC16_DLL,    SC16_DLH,
                                            SC16_LCR,
                                            SC16_FCR,
                                            SC16_FCR,
                                            SC16_EFCR,
                                            SC16_IER,
                                        }; 
    const static uint8_t InitData485[] =   {   0x80,       1/*12//3*/,          0, // set baud rate to 115200 /*9600//38400*/
                                            3,                                  // 8 bit, 1 stop bit, no parity
                                            6,                                  // reset TXFIFO, reset RXFIFO, non FIFO mode    
                                            0xC1,                               // RX FIFO Trigger - 60 bytes, enable FIFO mode
                                            0x30,                               // transmission control RTS, RTS in inverted, when TX RTS' = 1 
                                            0x1,                                // enable Receive interrupt
                                        };
    
//    const static uint8_t InitReg422[] =    {   SC16_LCR,  SC16_DLL,    SC16_DLH, 
//                                            SC16_LCR,
//                                            SC16_FCR,
//                                            SC16_FCR,
//                                            SC16_IER,
//                                        }; 
//    const static uint8_t InitData422[] =   {   0x80,       12/*1*/,          0, // set baud rate to 9600 /*115200*/
//                                            3,                                  // 8 bit, 1 stop bit, no parity
//                                            6,                                  // reset TXFIFO, reset RXFIFO, non FIFO mode    
//                                            0xC1,                               // RX FIFO Trigger - 60 bytes, enable FIFO mode
//                                            0x1                                 // enable Receive interrupt
//                                        };
    // its not 422 but 485 with 115200
    const static uint8_t InitReg422[] =    {   SC16_LCR,  SC16_DLL,    SC16_DLH,
                                            SC16_LCR,
                                            SC16_FCR,
                                            SC16_FCR,
                                            SC16_EFCR,
                                            SC16_IER,
                                        }; 
    const static uint8_t InitData422[] =   {   0x80,       1/*3*/,          0, // set baud rate to 115200 /*38400*/
                                            3,                                  // 8 bit, 1 stop bit, no parity
                                            6,                                  // reset TXFIFO, reset RXFIFO, non FIFO mode    
                                            0xC1,                               // RX FIFO Trigger - 60 bytes, enable FIFO mode
                                            0x30,                               // transmission control RTS, RTS in inverted, when TX RTS' = 1 
                                            0x1,                                // enable Receive interrupt
                                        };
    
    const static uint8_t ChLen[] = { sizeof(InitReg485), sizeof(InitReg485), sizeof(InitReg485), sizeof(InitReg422)};
    const static uint8_t *ChRegsPtr[] = { InitReg485, InitReg485, InitReg485, InitReg422};
    const static uint8_t *ChDataPtr[] = { InitData485, InitData485, InitData485, InitData422};
    
    
    address = ChTable[ch];
    len = ChLen[ch];
    ptrRegs = ChRegsPtr[ch];
    ptrData = ChDataPtr[ch];
    
    
    for (i = 0; i< len; i++)
    {
        data[0] = REG(ptrRegs[i]);
        data[1] = ptrData[i];
        OrI2cInitDelay();
        if (!I2C2_Write(address, data, 2)){
        // error
            error[ch] = 1;
            return 1;
        }
        // wait for the current transfer to complete
        //while(I2C5_IsBusy( ));
        if (OrI2c2IsBusy())
        {
            // error (timeout)
            error[ch] = 1;
            return 1;
        }
        if (I2C2_ErrorGet() != I2C_ERROR_NONE)
        {
            // error
            error[ch] = 1;
            return 1;
        }
    }
    error[ch] = 0;
    return 0;
}
// write to UART should not be called from ISR
uint8_t OrSc16_Write(uint8_t ch, uint8_t *buf, uint8_t num)
{
    uint8_t address/*, data[num + 1]*/;
    address = ChTable[ch];
    
    data[0] = REG(SC16_THR);
    memcpy(&(data[1]), buf, num);
    OrI2cInitDelay();
    if (!I2C2_Write(address, data, num + 1)){
    // error
        return 0;
    }
    // wait for the current transfer to complete
    //while(I2C5_IsBusy( ));
    if (OrI2c5IsBusy())
    {
        return 0; // timeout
    }
    if (I2C2_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 0;
    }
    return num;
}

uint8_t OrSc16_Read(uint8_t ch, uint8_t *buf)
{
    uint8_t reg, num, iir, address;
    address = ChTable[ch];
    
    // read interrupt register of bytes
    reg = REG(SC16_IIR);
    OrI2cInitDelay();
    if (!I2C2_WriteRead(address, &reg, 1, &iir, 1)){
        // error
        return 0;
    }
    // wait for the current transfer to complete
    //while(I2C5_IsBusy( ));
    if (OrI2c2IsBusy())
    {
        return 0; //timeout
    }
    if ((I2C2_ErrorGet() != I2C_ERROR_NONE)||((iir & 0x4) == 0))
    {
        // error
        return 0;
    }
    // read number of bytes
    reg = REG(SC16_RXLVR);
    OrI2cInitDelay();
    if (!I2C2_WriteRead(address, &reg, 1, &num, 1)){
        // error
        return 0;
    }
    // wait for the current transfer to complete
    //while(I2C5_IsBusy( ));
    if (OrI2c2IsBusy())
    {
        return 0; // timeout
    }
    if ((I2C2_ErrorGet() != I2C_ERROR_NONE)|| (num == 0))
    {
        // error
        return 0;
    }
    // read message
    reg = REG(SC16_RHR);
    OrI2cInitDelay();
    if (!I2C2_WriteRead(address, &reg, 1, buf, num)){
        // error
        return 0;
    }
     //while(I2C5_IsBusy( ));
    if (OrI2c2IsBusy())
    {
        return 0; //timeout
    }
    if (I2C2_ErrorGet() != I2C_ERROR_NONE)
    {
        // error
        return 0;
    }
    
    return num;
    
    
}

uint8_t OrSc16_Proc(void)
{
    uint8_t num, i;
    //uint16_t j;
    int8_t status;
    for (i = 0; i< sizeof(ChTable); i++)
        if (rx485_422[i])
        {
            rx485_422[i] = false;
            num = OrSc16_Read(i, rxBuf);
            if (num != MSG_LENGTH){
                SYS_CONSOLE_PRINT("Gut message: 0x%X bytes, ch: %d \r\n", num, i);
    //            if (num == OrSc16_Write(CH_485, rx485Buf, num))
    //            {
    //                SYS_CONSOLE_PRINT("Write message \r\n");
    //            }
                num = OrSc16_Read(i, rxBuf);
            }
            if (num == MSG_LENGTH)
            {
                OrByteArrayToHexString(rxBuf, MSG_LENGTH, str);
                SYS_CONSOLE_PRINT("Received '%s'\r\n", str);
                status = Parse(i, rxBuf, MSG_LENGTH, txBuf);
                if(status > 0)
                {
                    //for(j = 0; j<1000; j++);
                    if (OrSc16_Write(i, txBuf, MSG_LENGTH) == MSG_LENGTH)
                    {
                        SYS_CONSOLE_PRINT("Write 485/422  Ch, data: %d, %d\r\n", i, txBuf[0]);
                    }
                }
                else{
                    SYS_CONSOLE_PRINT("message error: %d\r\n", status);
                }
            }


        }
    
    return 0;
}

//uint8_t OrSc16_IsrHandler(void)
//{
//    rx485_422 = true;
//    return 0;
//}

void OrSc16_Periodic(void)
{
//#ifdef MICROCHIP_BOARD
    static uint8_t intLast[] = {1,1,1,1};
    //if (!OrUtilsInitEnd()) return;
    if ((IRQn_RS485_1 == 0)&&(intLast[0] == 1))
       rx485_422[0] = true;
    if ((IRQn_RS485_2 == 0)&&(intLast[1] == 1))
       rx485_422[1] = true;
    if ((IRQn_RS485_3 == 0)&&(intLast[2] == 1))
       rx485_422[2] = true;
    if ((IRQn_RS485_4 == 0)&&(intLast[3] == 1))
       rx485_422[3] = true;
    
    intLast[0] = IRQn_RS485_1;
    intLast[1] = IRQn_RS485_2;
    intLast[2] = IRQn_RS485_3;
    intLast[3] = IRQn_RS485_4;
    
    if (timeOut[Ch_Ardu]) timeOut[Ch_Ardu]--;
    else{
        sc16Status.arduCritTemp = 0;
        sc16Status.arduOverTemp = 0;
    }
    if (timeOut[Ch_Dfc1]) timeOut[Ch_Dfc1]--;
    else{ 
        sc16Status.dfc1CritTemp = 0;
        sc16Status.dfc1OverTemp = 0;
    }
    if (timeOut[Ch_Dfc2]) timeOut[Ch_Dfc2]--;
    else{ 
        sc16Status.dfc2CritTemp = 0;
        sc16Status.dfc2OverTemp = 0;
    }
    if (timeOut[Ch_Heu]) timeOut[Ch_Heu]--;
    else sc16Status.heuNotOk = 1;
//#endif
}

uint8_t OrSc16_GetError(uint8_t ch)
{
    return error[ch];
}


uint8_t Parse(uint8_t ch, uint8_t * rxbuf, uint8_t len, uint8_t * txbuf)
        
{
    if (len != 1) return 0;
    
    timeOut[ch] = SC16_TIMEOUT;
    
    if ((ch == Ch_Ardu) && (rxBuf[0] == 0xF2))
    {
        sc16Status.arduCritTemp = 1;
        sc16Status.arduOverTemp = 1;
        txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
        return 1;
    }
    else if ((ch == Ch_Ardu) && (rxBuf[0] == 0xF1)){
       sc16Status.arduOverTemp = 1;
       sc16Status.arduCritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Ardu) && (rxBuf[0] == 0xB5)){
       sc16Status.arduOverTemp = 0;
       sc16Status.arduCritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Dfc1) && (rxBuf[0] == 0xF2))
    {
        sc16Status.dfc1CritTemp = 1;
        sc16Status.dfc1OverTemp = 1;
        txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
        return 1;
    }
    else if ((ch == Ch_Dfc1) && (rxBuf[0] == 0xF1)){
       sc16Status.dfc1OverTemp = 1;
       sc16Status.dfc1CritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Dfc1) && (rxBuf[0] == 0xB5)){
       sc16Status.dfc1OverTemp = 0;
       sc16Status.dfc1CritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Dfc2) && (rxBuf[0] == 0xF2))
    {
        sc16Status.dfc2CritTemp = 1;
        sc16Status.dfc2OverTemp = 1;
        txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
        return 1;
    }
    else if ((ch == Ch_Dfc2) && (rxBuf[0] == 0xF1)){
       sc16Status.dfc2OverTemp = 1;
       sc16Status.dfc2CritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Dfc2) && (rxBuf[0] == 0xB5)){
       sc16Status.dfc2OverTemp = 0;
       sc16Status.dfc2CritTemp = 0;
       txBuf[0] = sc16Status.battleShort? 0xA1: 0xA0;
       return 1;
    }
    else if ((ch == Ch_Heu) && ((rxBuf[0] == 0x1)||(rxBuf[0] == 0x2))){
       sc16Status.heuNotOk = 1;
    }
    else if ((ch == Ch_Heu) && ((rxBuf[0] == 0x4)||(rxBuf[0] == 0x8))){
       sc16Status.heuNotOk = 0;
    }
    return 0;
}