/* 
 * File:   OrTcpIp.h
 * Author: Michael David
 *
 * Created on April 9, 2014, 7:48 AM
 */

#ifndef ORTCPIP_H
#define	ORTCPIP_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MAX_CLIENT (3) // Maximum number of simultanous connections accepted by the server.

enum{
   cmd_SetFlashIp = 12,
   cmd_GetFlashIp,
   cmd_EraseFlashIp,
   cmd_SetIoWithMask,
   cmd_GetStatus,
   cmd_Reset,
   cmd_GetVersion,
   cmd_SetRemote,
   cmd_SetName,
   cmd_GetName,
   cmd_SetSN,
   cmd_GetSN,
   cmd_Bit,
   cmd_SendConfig,
   cmd_SendI2c,
   cmd_BitManual,
};




void OrTcpCmdParser(SOCKET ClientSock, uint8_t *bfr);
uint8_t OrTcpInitIP(void);//uint32_t *ipAddress, uint32_t *mask);
uint16_t OrTcpGetPort(void);
void OrTcpSaveIP(void);
uint8_t OrTcpReadIP(void);
void OrTcp50ms(void);
void OrTcpIpReadRec(void);
void OrTcpIpWriteRec(void);
void OrTcpIpGetMacAddress(uint8_t *buf);


#ifdef	__cplusplus
}
#endif

#endif	/* ORTCPIP_H */

