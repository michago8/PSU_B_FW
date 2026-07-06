/* 
 * File:   OrFlash.h
 * Author: Michael David
 *
 * Created on April 8, 2014, 6:30 PM
 */

#ifndef ORFLASH_H
#define	ORFLASH_H

#ifdef	__cplusplus
extern "C" {
#endif

#define FLASH_USER  0x1000      // 4KB
#define FLASH_END   0xBD080000  // 512KB
#define FLASH_ADDR  (FLASH_END - FLASH_USER)//user start
#define SIZEOF_FLASH_REG_32 4
typedef struct{
    uint32_t    ip;
    uint32_t    mask;
    uint32_t    gateway;
    uint32_t    cs;
}FLASH_REC;

uint32_t  OrFlashUnlock(uint32_t nvmop);
uint32_t  OrFlashWriteWord (uint32_t address, uint32_t data);
void    OrFlashErasePage();
void    OrFlashReadBuf(uint32_t *buf, uint8_t len);
void    OrFlashWritebBuf(uint32_t *buf, uint8_t len);
void    OrFlashInit(void);

extern FLASH_REC record;

#ifdef	__cplusplus
}
#endif

#endif	/* ORFLASH_H */

