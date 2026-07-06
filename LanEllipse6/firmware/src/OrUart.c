#include <string.h>
#include <stdbool.h>
#include "definitions.h"
#include "OrTime.h"
#include "OrGpio.h"
#include "OrUart.h"
#include "OrUartApp.h"

typedef struct{
    uint8_t     state;
    bool        transferStatus;
    DRV_HANDLE  usartHandle;
    DRV_USART_BUFFER_HANDLE bufferHandle;
    uint8_t     readBuf[UART_BUFFER_SIZE];
    uint8_t     writeBuf[UART_BUFFER_SIZE];
    uint8_t     rxLen;
    uint8_t     txLen;
    uint8_t     processedBytes;
}_UART_DATA;
static _UART_DATA uartData;
typedef enum
{
    /* Application's state machine's initial state. */
    UART_STATE_INIT=0,
    UART_STATE_TRANSMIT_MESSAGE,
    UART_STATE_WAIT_MESSAGE_TRANSFER_COMPLETE,
    UART_STATE_RECEIVE_DATA_INIT,
    UART_STATE_WAIT_RECEIVE_DATA,
    UART_STATE_WAIT_RECEIVE_COMPLETE,
    UART_STATE_ERROR,
    UART_STATE_IDLE,       
} UART_STATES;
/*
 * Init UART
 */
void OrUartInit(void)
{
    /* Place the App state machine in its initial state. */
    uartData.state           = UART_STATE_INIT;
    uartData.transferStatus  = false;
    uartData.usartHandle     = DRV_HANDLE_INVALID;
    uartData.bufferHandle    = DRV_USART_BUFFER_HANDLE_INVALID;
}

/*
 * Periodic
 */
void OrUartPeriodic(void)
{
    static uint8_t lastReceivedState = 0;
    if (uartData.state == UART_STATE_WAIT_RECEIVE_DATA){
        uartData.processedBytes = DRV_USART_BufferCompletedBytesGet(uartData.bufferHandle);
        // check if end receiving message (greater than null size) 
        if ((lastReceivedState)&&(uartData.processedBytes == lastReceivedState))
        {
            uartData.state = UART_STATE_WAIT_RECEIVE_COMPLETE;
            uartData.rxLen = uartData.processedBytes;
            lastReceivedState = 0;
        }
        else
            lastReceivedState = uartData.processedBytes;
    }
}
static void UART_USARTBufferEventHandler(
    DRV_USART_BUFFER_EVENT bufferEvent,
    DRV_USART_BUFFER_HANDLE bufferHandle,
    uintptr_t context
)
{
    switch(bufferEvent)
    {
        case DRV_USART_BUFFER_EVENT_COMPLETE:
        {
            uartData.transferStatus = true;
            break;
        }

        case DRV_USART_BUFFER_EVENT_ERROR:
        {
            uartData.state = UART_STATE_ERROR;
            break;
        }

        default:
        {
            break;
        }
    }
}

/*
 * UART Process
 */
void OrUartProc(void)
{
    /* Check the application's current state. */
    switch ( uartData.state )
    {
        /* Application's initial state. */
        case UART_STATE_INIT:
        {
            uartData.usartHandle = DRV_USART_Open(DRV_USART_INDEX_0, DRV_IO_INTENT_READWRITE);

            if (uartData.usartHandle != DRV_HANDLE_INVALID)
            {
                DRV_USART_BufferEventHandlerSet(uartData.usartHandle, UART_USARTBufferEventHandler, 0);
                uartData.state = UART_STATE_RECEIVE_DATA_INIT;
            }
            else
            {
                //appData.state = UART_STATE_ERROR;
                SYS_CONSOLE_MESSAGE(" UART: ERROR Opening \r\n");
            }
            break;
        }

        case UART_STATE_TRANSMIT_MESSAGE:
        {
            DRV_USART_WriteBufferAdd(uartData.usartHandle, (void*)uartData.writeBuf, uartData.txLen, &uartData.bufferHandle);

            if (uartData.bufferHandle != DRV_USART_BUFFER_HANDLE_INVALID)
            {
                uartData.state = UART_STATE_WAIT_MESSAGE_TRANSFER_COMPLETE;
            }
            else
            {
                //uartData.state = UART_STATE_ERROR;
                SYS_CONSOLE_MESSAGE(" UART: ERROR Transmit Request \r\n");
            }
            break;
        }

        case UART_STATE_WAIT_MESSAGE_TRANSFER_COMPLETE:
        {
            if(uartData.transferStatus == true)
            {
                uartData.transferStatus = false;
                uartData.state = UART_STATE_RECEIVE_DATA_INIT;
            }
            break;
        }

        case UART_STATE_RECEIVE_DATA_INIT:
        {
            DRV_USART_ReadBufferAdd(uartData.usartHandle, uartData.readBuf, UART_BUFFER_SIZE, &uartData.bufferHandle);

            if (uartData.bufferHandle != DRV_USART_BUFFER_HANDLE_INVALID)
            {
                uartData.state = UART_STATE_WAIT_RECEIVE_DATA;
            }
            else
            {
                SYS_CONSOLE_MESSAGE(" UART: ERROR Read Request \r\n");
                //uartData.state = UART_STATE_ERROR;
            }
            break;
        }

        case UART_STATE_WAIT_RECEIVE_DATA:
        {
            if(uartData.transferStatus == true)
            {
                uartData.transferStatus = false;
                uartData.state = UART_STATE_RECEIVE_DATA_INIT/*UART_STATE_TRANSMIT_DATA*/;
            }
            break;
        }
        case UART_STATE_WAIT_RECEIVE_COMPLETE:
        {
            DRV_USART_ReadAbort(uartData.usartHandle);
            uartData.state = UART_STATE_RECEIVE_DATA_INIT;
            // parse message 
            //OrUartAppParse(uartData.readBuf, uartData.rxLen);
            break;
        }

        case UART_STATE_ERROR:
        {
            //LED_OFF();
            uartData.state = UART_STATE_RECEIVE_DATA_INIT/*UART_STATE_IDLE*/;
            break;
        }

        case UART_STATE_IDLE:
        default:
        {
            break;
        }
    }
}

/*
 * Send
 */
void OrUartSend(uint8_t *data, uint8_t len)
{
    if (uartData.state == UART_STATE_WAIT_RECEIVE_DATA) 
        DRV_USART_ReadAbort(uartData.usartHandle);
    uartData.state = UART_STATE_TRANSMIT_MESSAGE;
    uartData.txLen = len;
    memcpy(uartData.writeBuf, data, len);
    
}
 


