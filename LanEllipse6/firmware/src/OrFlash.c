
//#include <plib.h>
//#include "HardwareProfile.h"
#include "definitions.h"
#include "OrGpio.h"
#include "OrFlash.h"



void FlashDelay(void);


FLASH_REC record = {0,0,0,0};

/*
 *
 */
void FlashDelay(void)
{
    uint32 i;
    for (i=0;i<80000;i++);
}
/*
 *  Init FLASH partition
 */
void OrFlashInit(void)
{
    //BMXPUPBA = BMXPFMSZ - (4*1024);  // User Mode Flash 4K, one page
}
/*
 *   Unlock Flash Write
 */
//uint32 OrFlashUnlock(uint32 nvmop)
//{
//    uint32 int_status;
//    int_status = INTDisableInterrupts();
//    // Enable Flash Write/Erase Operations and Select
//    // Flash operation to perform
//    NVMCON = nvmop;
//    // Write Keys
//    NVMKEY = 0xAA996655;
//    NVMKEY = 0x556699AA;
//    // Start the operation using the Set Register
//    NVMCONSET = 0x8000;
//    // Wait for operation to complete
//    while (NVMCON & 0x8000);
//    // Restore Interrupts
//    INTRestoreInterrupts(int_status);
//    // Disable NVM write enable
//    NVMCONCLR = 0x0004000;
//    // Return WRERR and LVDERR Error Status Bits
//    return (NVMCON & 0x3000);
//}

/*
 *  Write uint32 to FLASH
 */
uint32_t OrFlashWriteWord (uint32_t address, uint32_t data)
{
//    uint32 res;
//    // Load data into NVMDATA register
//    NVMDATA = data;
//     // Load address to program into NVMADDR register
//    NVMADDR = (uint32) address;
//    // Unlock and Write Word
//    res = OrFlashUnlock (0x4001);
//    // Return Result
//    return res;
    
    return NVM_WordWrite(data, address);
}

/*
 *  page erase
 */
void OrFlashErasePage()
{
    /*uint32 res;
    // Set NVMADDR to the Start Address of page to erase
    NVMADDR = (uint32) address;
    // Unlock and Erase Page
    res = OrFlashUnlock(0x4004);
    // Return Result
    return res;*/
    //NVMErasePage((void *)FLASH_ADDR);
    NVM_PageErase(FLASH_ADDR);
}

/*
 *  read Buffer from FLASH
 */
void    OrFlashReadBuf(uint32_t *buf, uint8_t len)
{
    //uint8 i;
    //uint32 *ptr;// = (uint32*)FLASH_ADDR;
    //for(i=0; i<len; i++)
    //{
    //    buf[i] = ptr[i];
    //}
    memcpy(buf, (void*)FLASH_ADDR, len*4);

}


/*
 *  Write Buffer to FLASH
 */
void    OrFlashWritebBuf(uint32_t *buf, uint8_t len)
{
    uint8_t i;
    //uint32 *ptr = (uint32*)FLASH_ADDR;

    //OrFlashErasePage(ptr);
    // Erase second page of Program Flash
    //NVMErasePage((void *)FLASH_ADDR);
    OrFlashErasePage();
    //FlashDelay();
    for (i=0; i<len; i++)
    {
        //FlashDelay();
        //OrFlashWriteWord((void *)ptr[i], buf[i]);
        //NVMWriteWord((void*)(FLASH_ADDR + i*4), buf[i]);
        OrFlashWriteWord((FLASH_ADDR + i*4), buf[i]);
    }
}
