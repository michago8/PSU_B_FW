/*
 * SPI file using harmony BSP
 */
#include <stdbool.h>                    // Defines true
#include "definitions.h"
#include "OrSpi.h"


#define SPI_CS_ON
#define SPI_CS_OFF


static volatile bool isTransferDone = false;
//static uint8_t buf[64];

/* This function will be called by SPI PLIB when transfer is completed */
void SPIEventHandler(uintptr_t context )
{
    (void)context;
    /* De-assert the chip select */
    SPI_CS_ON;

    isTransferDone = true;
}
/*
 * Init
 */
void OrSpiInit(void)
{
    SPI1_CallbackRegister(SPIEventHandler, (uintptr_t) 0);
    /* De-assert the chip select */
    SPI_CS_ON;
}

/*
 * Write
 */
void OrSpiWrite(void *data, size_t len)
{
    SPI_CS_OFF;
    isTransferDone = false;
    SPI1_Write(data, len);
    while(!isTransferDone);
    //SPI_CS_ON;
}

void OrSpiWriteRead(uint8_t *txData, size_t txLen, uint8_t *rxData, size_t rxLen)
{
    SPI_CS_OFF;
    isTransferDone = false;
    SPI1_WriteRead(txData, txLen, rxData, rxLen);
    //SPI_CS_ON;
}
