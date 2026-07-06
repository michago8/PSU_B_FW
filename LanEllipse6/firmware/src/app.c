/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"

#include "tcpip/tcpip.h"
#include "tcpip_manager_control.h"
#include "tcp_manager.h"
#include <errno.h>

#include "OrConfig.h"
//#include "OrGpio.h"
#include "OrTcpIp.h"
#include "OrAdc.h"
//#include "OrSpi.h"
#include "OrUtils.h"
#include "OrParser.h"
//#include "http_manager.h"

#define SERVER_PORT 9764 //9760
#define MODBUS_PORT 502
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;
static bool appInit = false;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    
    /* Place the App state machine in its initial state. */
    //appData.state = APP_STATE_INIT;
    appData.state = APP_TCPIP_WAIT_INIT;


    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
     
    
}


void APP_Reset(void)
{
    uint8_t i;
    appData.state = APP_BSD_OPERATION;//APP_BSD_INIT;//APP_TCPIP_WAIT_INIT;

    //TCPIP_HTTP_Deinitialize();
    //TCPIP_STACK_Deinitialize(sysObj.tcpip);
    //sysObj.tcpip = TCPIP_STACK_Initialize(0, (const SYS_MODULE_INIT*)NULL);
    //TCPIP_STACK_NetUp("PIC32INT");    // Bring it back up
    for (i = 0; i < MAX_CLIENT; i++)
    {
        if (appData.ClientSock[i] != INVALID_SOCKET)
            closesocket(appData.ClientSock[i]);
    }
    
    //SYS_CONSOLE_PRINT("Heap usage: %d\n", heap_get_current_usage());
    
    //TCPIP_STACK_Deinitialize(sysObj.tcpip);
    //SYS_CONSOLE_PRINT("Heap usage: %d\n", heap_get_current_usage());
    //sysObj.tcpip = TCPIP_STACK_Init();
    //sysObj.tcpip = TCPIP_STACK_Initialize(0, (const SYS_MODULE_INIT*)NULL);
}

void APP_SetAppInit(void)
{
    appInit = true;
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    SYS_STATUS tcpipStat;
    const char *netName, *netBiosName;
    int i, nNets;
    TCPIP_NET_HANDLE netH;
    char str[250];
    /* Check the application's current state. */
    if (appInit){
        appInit = false;
        APP_Reset();
    }
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
            
            
            if (appInitialized)
            {

                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {

            break;
        }
        case APP_TCPIP_WAIT_INIT:
                    tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
                    if (tcpipStat < 0) { // some error occurred
                        SYS_CONSOLE_MESSAGE(" APP: TCP/IP stack initialization failed!\r\n");
                        appData.state = APP_TCPIP_ERROR;
                    } else if (tcpipStat == SYS_STATUS_READY) {
                        // now that the stack is ready we can check the 
                        // available interfaces
                        nNets = TCPIP_STACK_NumberOfNetworksGet();

                        for (i = 0; i < nNets; i++) {

                            netH = TCPIP_STACK_IndexToNet(i);
                            netName = TCPIP_STACK_NetNameGet(netH);
                            netBiosName = TCPIP_STACK_NetBIOSName(netH);

        #if defined(TCPIP_STACK_USE_NBNS)
                            SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
        #else
                            SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
        #endif  // defined(TCPIP_STACK_USE_NBNS)
                            (void)netName;          // avoid compiler warning 
                            (void)netBiosName;      // if SYS_CONSOLE_PRINT is null macro

                        }

                        appData.state = APP_TCPIP_WAIT_FOR_IP;
                    }

                    OrTcpInitIP();
            break;
            
        case APP_TCPIP_WAIT_FOR_IP:
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; i++) {
                netH = TCPIP_STACK_IndexToNet(i);
                if (!TCPIP_STACK_NetIsReady(netH)) {
                    return; // interface not ready yet!
                }
                IPV4_ADDR           ipAddr;
                ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                SYS_CONSOLE_MESSAGE(" IP Address: ");
                SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
            }
            // all interfaces ready. Could start transactions!!!
            appData.state = APP_BSD_INIT;
            //... etc.
            break;
            
        case APP_BSD_INIT:
        {
            // initialize GPIO periodic (if done earlier doesn't work) 
            //OrGpioPeriodicInit();//
            // Initialize all client socket handles so that we don't process
            // them in the BSD_OPERATION state
            for (i = 0; i < MAX_CLIENT; i++)
                appData.ClientSock[i] = INVALID_SOCKET;

            appData.state = APP_BSD_CREATE_SOCKET;

        }
            break;
        
        case APP_BSD_CREATE_SOCKET:
        {
            // Create a socket for this server to listen and accept connections on
            SOCKET tcpSkt = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
            if (tcpSkt == INVALID_SOCKET)
                return;
            appData.bsdServerSocket = (SOCKET) tcpSkt;

            appData.state = APP_BSD_BIND;
        }
            break;
            
        case APP_BSD_BIND:
        {
            // Bind socket to a local port
            struct sockaddr_in addr;
            int addrlen = sizeof (struct sockaddr_in);
            addr.sin_port = MODBUS_PORT;
            addr.sin_addr.S_un.S_addr = IP_ADDR_ANY;
            if (bind(appData.bsdServerSocket, (struct sockaddr*) &addr, addrlen) == SOCKET_ERROR)
                return;

            appData.state = APP_BSD_LISTEN;
            // No break needed
        }
            break;
            
        case APP_BSD_LISTEN:
        {
            if (listen(appData.bsdServerSocket, MAX_CLIENT) == 0) {
                appData.state = APP_BSD_OPERATION;
                SYS_CONSOLE_PRINT("Waiting for Client Connection on port: %d\r\n", MODBUS_PORT);
            }
        }
            break;
        
        case APP_BSD_OPERATION:
        {
            int length;
            struct sockaddr_in addRemote;
            int addrlen = sizeof (struct sockaddr_in);
            static uint8_t msgIn[OR_BUFFER_SIZE], msgOut[OR_BUFFER_SIZE];

            for (i = 0; i < MAX_CLIENT; i++) {
                // Accept any pending connection requests, assuming we have a place to store the socket descriptor
                if (appData.ClientSock[i] == INVALID_SOCKET)
                    appData.ClientSock[i] = accept(appData.bsdServerSocket, (struct sockaddr*) &addRemote, &addrlen);

                // If this socket is not connected then no need to process anything
                if (appData.ClientSock[i] == INVALID_SOCKET)
                    continue;

                // For all connected sockets, receive and send back the data
                length = recv(appData.ClientSock[i], (char *)msgIn, sizeof (msgIn), 0);

                if (length > 0) {
                        OrByteArrayToHexString(msgIn, length, str);
                    SYS_CONSOLE_PRINT("Received '%s' size %d\r\n", str, length);
                    int8_t status = OrModbusHandler(msgIn, length, msgOut);
                    if (status > 0){
                        status = send(appData.ClientSock[i], (const char*)msgOut, (uint8_t)status, 0);
                        //if (status <= 0){
                        OrByteArrayToHexString(msgOut, status, str);
                        SYS_CONSOLE_PRINT("Send '%s' size %d\r\n", str, status);
                        //   SYS_CONSOLE_PRINT("message send size: %d\r\n", status, appData.ClientSock[i]); 
                    }
                    else{
                        SYS_CONSOLE_PRINT("message Modbus error: %d\r\n", status);
                    }
                    //OrTcpCmdParser(appData.ClientSock[i], (uint8_t*)_bfr);
                } else if (length == 0 || errno != EWOULDBLOCK) {
                    SYS_CONSOLE_PRINT("close socket:length: %d errno: %d\r\n", length, errno);
                    closesocket(appData.ClientSock[i]);
                    appData.ClientSock[i] = INVALID_SOCKET;
                }
                // else just wait for some more data
            }
        }
            break;
        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
