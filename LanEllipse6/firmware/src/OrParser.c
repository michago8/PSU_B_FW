#include "OrConfig.h"
#include "OrUtils.h"
#include "OrOp.h"
#include "app.h"
#include "OrParser.h"


uint8_t FillHeader(uint8_t *msg, uint16_t length);
bool ReadHoldingReg(uint16_t address, uint16_t *value);
bool WriteHoldingReg(uint16_t address, uint16_t value);

uint16_t RegsTable[SIZE_OF_TABLE] = {0};
static uint16_t tid, pid, length;
static uint8_t uid, fCode;
static uint16_t keepAlive = KEEP_ALIVE_TIME;


void   OrParserInit(void)
{
    
}

void OrParserPeriodic(void)
{
    static uint16_t cnt1S = 0;
    
    cnt1S++;
    if (cnt1S == 1000)
    {
        cnt1S = 0;
        keepAlive--;
        if (keepAlive == 0){
            keepAlive = KEEP_ALIVE_TIME; 
            //APP_SetAppInit();
            OrOpSetCommRst();
        }
    }
}

int8_t OrModbusHandler(uint8_t *msgIn, uint8_t len, uint8_t *msgOut)
{
    int8_t status = len;
    uint8_t i = 0, j, byteCnt;
    uint16_t val, offset, numOfRegs;
    
    if (len < 6) return -1; //TID, PID, Length
    
    tid = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
    pid = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
    
    if (pid != 0) return -2; //check if MODBUS protocol
            
    length = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
    
    if ((length < 4) || (length != (len - 6))) return -3; //UID, FCode, Offset
    
    uid = msgIn[i++];
    
    if (uid != 1) return -4; //only one unit in current IP
    
    fCode = msgIn[i++];
    offset = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
    
    switch (fCode){
        case 3://Read Holding Registers
        {
            numOfRegs = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
            byteCnt = 2*numOfRegs;
            length = 1 + 1 + 1 + byteCnt; // UID, FCode, Byte Count, Registers value
            i = FillHeader(msgOut, length);
            msgOut[i++] = byteCnt;
            
            for (j=0; j < numOfRegs; j++)
            {
                if (ReadHoldingReg(offset + j, &val)){
                    msgOut[i++] = OrGetByte0(val);
                    msgOut[i++] = OrGetByte1(val);
                }
                else
                    return -5;
            }
            
        }
        break;
        
        case 6: // write single register
            val = OrGetWord(msgIn[i], msgIn[i+1]);
            length = 1 + 1 + 2 + 2; // UID, FCode, offset, value
            i = FillHeader(msgOut, length);
            if (WriteHoldingReg(offset, val)){
                msgOut[i++] = OrGetByte0(offset);
                msgOut[i++] = OrGetByte1(offset);
                msgOut[i++] = OrGetByte0(val);
                msgOut[i++] = OrGetByte1(val);
            }
            else
                return -5;
            break;
            
        case 16: // write multiple registers
            length  = 1 + 1 + 2 + 2; // UID, FCode, offset, No. of registers
            numOfRegs = OrGetWord(msgIn[i], msgIn[i+1]); i+=2;
            byteCnt = msgIn[i++];
            for (j = 0; j < numOfRegs; j++)
            {
                val = OrGetWord(msgIn[i], msgIn[i+1]); i += 2;
                WriteHoldingReg(offset + j, val);
            }
            i = FillHeader(msgOut, length);
            msgOut[i++] = OrGetByte0(offset);
            msgOut[i++] = OrGetByte1(offset);
            msgOut[i++] = OrGetByte0(numOfRegs);
            msgOut[i++] = OrGetByte1(numOfRegs);
            break;
            
        default:
            return -5; //unsupported code
    }
    keepAlive = KEEP_ALIVE_TIME;
    status  = length + 6;
    return status;
}

uint8_t FillHeader(uint8_t *msg, uint16_t length)
{
    uint8_t i = 0;
    msg[i++] = OrGetByte0(tid);
    msg[i++] = OrGetByte1(tid);
    msg[i++] = OrGetByte0(pid);
    msg[i++] = OrGetByte1(pid);
    msg[i++] = OrGetByte0(length);
    msg[i++] = OrGetByte1(length);
    msg[i++] = uid;
    msg[i++] = fCode;
    return i;
}

bool ReadHoldingReg(uint16_t address, uint16_t *value)
{
    *value = RegsTable[address];
    return true;
}

bool WriteHoldingReg(uint16_t address, uint16_t value)
{
    if ((address == 0)||
         ((address == 0x31) || (address == 0x33)) ||
            (address == 0x54) || (address == 0x55) || 
            (address == 0x5A) || (address == 0x5B) || 
            (address == 0x5C) || 
         //((address == 0x30) && (address <= 0x32 ))||
            ((address >= 0x61) && (address <= 0x68 )) ||
            (address == 0x6C) || (address == 0x6D) || (address == 0x6E) ||
            ((address >= 0x70) && (address <= 0x7F )) ||
            (address == 0x80) || (address == 0x9F) ||
            (address == 0xA3) || (address == 0xA4) || 
            (address == 0xB0) || (address == 0xB1) ||
            (address == 0xB9) || (address == 0xBA))
    {
        RegsTable[address] = value;
        OrOpCmds(address);
    }
    return true;
}

