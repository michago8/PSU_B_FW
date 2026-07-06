
//#include "HardwareProfile.h"
//#include "TCPIPConfig.h" 
//#include "TCPIP Stack/TCPIP.h"
//#include "MPLAB.X/OrFlash.h"
#include "definitions.h"
#include "OrConfig.h"
#include "OrUtils.h"
#include "OrAdc.h"
#include "OrTcpIp.h"
#include "OrGpio.h"
#include "OrFlash.h"
#include "OrTCA9539.h"
#include "tcpip_manager_control.h"
#include "OrOp.h"

#define SIZEOF_SET_MASK 12
typedef struct{
    uint8_t cmd;
    uint8_t spare[3];
    uint32_t mask;
    uint32_t state;
}SET_MASK_IN;

#define SIZEOF_FLASH_REC_32 4
#define SIZEOF_FLASH_REC_8  (SIZEOF_FLASH_REC_32*4)




static IPV4_ADDR   myIpAddress, myMask, myGateway;
static uint16_t myPort = 9764;


/*
 *  parser for the commands from the TCP communication
 */
void OrTcpCmdParser(SOCKET ClientSock, uint8_t *bfr)
{

    //bfr[length] = '\0';
    //send(ClientSock[i], bfr, strlen(bfr), 0);
    // get state
    switch(bfr[0])
    {
        
        default:
            break;
    }


}

/*
 *  Init IP address
 */
uint8_t OrTcpInitIP(void)//(uint32_t *ipAddress, uint32_t *mask)
{
//    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
//    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
//    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
//    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
//    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
//    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
//    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;
//   
    TCPIP_NET_HANDLE netH = TCPIP_STACK_IndexToNet(0);
    
    // read if there is saved IP
    if (!OrTcpReadIP()){
        TCPIP_STACK_NetAddressSet(netH, &myIpAddress, &myMask, true);
        TCPIP_STACK_NetAddressGatewaySet(netH, &myGateway);
        //*ipAddress = myIpAddress.Val;
        //*mask = myMask.Val;
        OrOpIpUpdateTable(record);
        return 0;
    }
    return 1;
}

/*
 *  Save IP to FLASH
 */
void OrTcpSaveIP(void)
{
    // not functional
}

/*
 *  Read IP from FLASH
 * return: 0 OK,
 */
uint8_t OrTcpReadIP(void)
{
    //uint32 buf[3];
    // Read from FLASH
    //OrFlashReadBuf(buf, 3);
    OrTcpIpReadRec();
    // check if CS not valid
    if (record.cs != (record.ip + record.mask + record.gateway))
        return 1;
    // update IP address
    myIpAddress.Val = record.ip;
    // update sub address
    myMask.Val = record.mask;
    // update gateway
    myGateway.Val = record.gateway;
    // update port
    myPort = 502;
    // OK
    return 0;
}

/*
 * Get Port
 */
uint16_t OrTcpGetPort(void)
{
    return myPort;
}
/*
 *  Read Record
 */
void OrTcpIpReadRec(void)
{
    OrFlashReadBuf((uint32_t*)&record, SIZEOF_FLASH_REC_32);
}

/*
 *  Read Record
 */
void OrTcpIpWriteRec(void)
{
    OrFlashWritebBuf((uint32_t*)&record, SIZEOF_FLASH_REC_32);
}

/*
 * Get MAC address
 */
void OrTcpIpGetMacAddress(uint8_t *buf)
{
    TCPIP_NET_HANDLE netH = TCPIP_STACK_IndexToNet(0);
    TCPIP_NET_IF* pNetIf = _TCPIPStackHandleToNetUp(netH);
    
    memcpy(buf, pNetIf->netMACAddr.v, 6);
}
