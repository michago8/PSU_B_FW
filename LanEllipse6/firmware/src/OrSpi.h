/* 
 * File:   OrSpi.h
 * Author: Michael
 *
 * Created on February 14, 2023, 3:14 PM
 */

#ifndef ORSPI_H
#define	ORSPI_H

#ifdef	__cplusplus
extern "C" {
#endif
void OrSpiInit(void);
void OrSpiWrite(void *data, size_t len);
void OrSpiWriteRead(uint8_t *txData, size_t txLen, uint8_t *rxData, size_t rxLen);

#ifdef	__cplusplus
}
#endif

#endif	/* ORSPI_H */

