#include <string.h>
#include "definitions.h"
#include "OrTcpIp.h"
#include "OrGpio.h"
#include "OrFlash.h"
#include "OrSpi.h"
#include "OrADF5356.h"
#include "OrUart.h"
#include "OrUartApp.h"
#include "OrTCA9539.h"

#define SEND_HEADER 	8
#define RESP_HEADER     9
typedef struct{
	uint32_t	start;
	uint16_t	cs;
	uint8_t		bytes;
	uint8_t		cmd;
}MASTER_SEND;

typedef struct{
	uint32_t	start;
	uint16_t	cs;
	uint8_t		error;
	uint8_t		bytes;
	uint8_t		cmd;
}SLAVE_RESP;

enum{
	UART_ERR_NULL,
	UART_ERR_CS,
	UART_ERR_ILLEGAL,
	UART_ERR_RF_BUSY
};

static uint8_t localBuf[20];


uint16_t OrCalcCS(uint8_t *vec, uint8_t bytes)
{
	uint16_t sum = 0;
	uint8_t i;
	
	for(i=0; i<bytes; i++)
		sum += vec[i];
	return sum;
}
/*
 * Parse incoming data
 */
void OrUartAppParse(uint8_t *buf, uint8_t len)
{
    MASTER_SEND master;
    uint16_t cs;
    SLAVE_RESP slave = {0,0,0,0,0};
    // Check length
    if (len < SEND_HEADER) 
    {
        SYS_CONSOLE_MESSAGE(" UART APP: illegal length\r\n");
        return;
    }
    // copy header
    memcpy(&master, buf, SEND_HEADER);
    // check start code
    if (master.start != 0xEBCBA885)
    {
        SYS_CONSOLE_MESSAGE(" UART APP: illegal start code\r\n");
        return;
    }
    // check CS
    cs = OrCalcCS(buf + 6, len - 6);
    if (cs != master.cs)
    {
        slave.error = UART_ERR_CS;
		slave.bytes = 3;
        SYS_CONSOLE_MESSAGE(" UART APP: CS Error\r\n");
		// we add the right CS for convenience
		localBuf[RESP_HEADER] = cs & 0xFF;
		localBuf[RESP_HEADER + 1] = cs >> 8;
    }
    if (!slave.error)
    {
        switch (master.cmd)
        {
            case cmd_Reset:{
                OrGpioSetResetDly();
                localBuf[RESP_HEADER] = 1; //ACK
                slave.bytes = 2;
                break;
            }
            case cmd_EraseFlashIp:
                OrFlashErasePage();
                localBuf[RESP_HEADER] = 1; //ACK
                slave.bytes = 2;
                break;
                
            case cmd_SendConfig:{
                uint8_t index = SEND_HEADER, num;
                //OrGpioSetResetDly();
                //uint8_t bufTemp[] = {1, 2, 3, 4};
                //OrSpiWrite(bufTemp,3);
                num = buf[index];
                OrAdfSendConf(num);
                localBuf[RESP_HEADER] = 1; //ACK
                slave.bytes = 2;
                SYS_CONSOLE_PRINT(" UART APP: Send Configuration: %u\r\n", num);
                break;
            }
            
            case cmd_SendI2c:{
                uint8_t index = SEND_HEADER, ch, result;
                uint16_t value;
                ch = buf[index++];
                value = buf[index] + buf[index + 1]*256;
                result = OrTcaWriteOutput(ch, value);
                SYS_CONSOLE_PRINT(" UART APP: Send I2C, channel: %u, value: 0x%X result:%u\r\n", ch, value, result);
                localBuf[RESP_HEADER] = 1; //ACK
                slave.bytes = 2;
                break;
            }
                
            case cmd_GetFlashIp:
            {
                uint32_t temp[4];
                uint8_t index = RESP_HEADER;
                OrTcpIpReadRec();
                temp[0] = record.ip; //swap_uint32(record.ip);
                temp[1] = record.mask; //swap_uint32(record.mask);
                temp[2] = record.gateway;
                //temp[3] = record.port;
                memcpy(&localBuf[index], &temp[0], 12);
                index += 12;
                localBuf[index++] = temp[3] & 0xFF;
                localBuf[index++] = (temp[3] >> 8) & 0xFF;
                OrTcpIpGetMacAddress(&localBuf[index]);
                index += 6;
                slave.bytes = index;
                break;
            }
            case cmd_SetFlashIp:
            {
                uint32_t temp[4];
                uint8_t index = SEND_HEADER;
                OrTcpIpReadRec();
                // read data
                memcpy(temp, (void*)(&buf[index]), 4*3);
                index += 4*3;
                temp[3] = buf[index] + buf[index + 1]*256;
                record.ip = temp[0];//swap_uint32(buf[0]);
                record.mask = temp[1];//swap_uint32(buf[1]);
                record.gateway = temp[2];
                //record.port = temp[3];
                // CS
                record.cs = record.mask + record.ip + record.gateway;
                OrTcpIpWriteRec();
                //ACK
                localBuf[RESP_HEADER] = 1; //ACK
                slave.bytes = 2;
                break;
            }
               
            default:
                slave.error = UART_ERR_ILLEGAL;
                slave.bytes = 1;
                break;
        }
        // setup answer to CU
        slave.start = 0xEFC6AB86;
        slave.cmd = master.cmd;
        // calculate CS
        slave.cs = slave.error + slave.bytes + slave.cmd + 
            OrCalcCS(&(localBuf[RESP_HEADER]), slave.bytes - 1);
        // update header
        memcpy(localBuf, &slave, RESP_HEADER);
        // send message
        OrUartSend(localBuf, RESP_HEADER + slave.bytes - 1);
    }
    
}



