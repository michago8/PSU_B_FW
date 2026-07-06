/* 
 * File:   OrUart.h
 * Author: Michael
 *
 * Created on January 26, 2023, 7:03 PM
 */

#ifndef ORUART_H
#define	ORUART_H

#ifdef	__cplusplus
extern "C" {
#endif

#define UART_BUFFER_SIZE 128
    
    void OrUartInit(void);
    void OrUartSend(uint8_t *data, uint8_t len);
    void OrUartPeriodic(void);
    void OrUartProc(void);



#ifdef	__cplusplus
}
#endif

#endif	/* ORUART_H */

