#include <stdio.h>
#include <string.h>
#include "definitions.h"
#include "OrUtils.h"
#include "OrGpio.h"
#include "OrSpi.h"
#include "OrADF5356.h"



/*
 * send configuration
 */
void OrAdfSendConf(uint8_t conf)
{
    uint8_t i;
    uint16_t j;
    // 5500 MHz
    uint32_t buf1[] = {0x0000000D, 0x000015FC, 0x0061200B, 0x00C0067A,
            0x07047CC9, 0x15596568, 0x060000E7, 0x3501A076,
            0x00800025, 0x3000A584, 0x00000003, 0x00000012,
            0x00000001, 0x00302260};
    // 5400 MHz
    uint32_t buf1_t[] = {0x0000000D, 0x000015FC, 0x0061200B, 0x00C0067A,
            0x07047CC9, 0x15596568, 0x060000E7, 0x3501A076,
            0x00800025, 0x3000A584, 0x00000003, 0x00000012,
            0x00000001, 0x003021C0};
    // 7000 MHz
    uint32_t buf2[] = {0x0000000D, 0x000015FC, 0x0061200B, 0x00C0067A,
            0x07047CC9, 0x15596568, 0x060000E7, 0x3502A076,
            0x00800025, 0x3000BD84, 0x00000003, 0x00000012,
            0x00000001, 0x003015E0};
    uint32_t buf[1];
    for (i=0; i< 14; i++)
    {
        if (!conf){
            //memcpy(buf, &(buf1[i]), 4);
            buf[0] = swap_uint32(buf1[i]);
        }
        else if (conf == 2){
            buf[0] = swap_uint32(buf1_t[i]);
        }
        else{
            //memcpy(buf, &(buf2[i]), 4);
            buf[0] = swap_uint32(buf2[i]);
        }
        
        // Latch Enable clear
        SPI1_LE0_IO = 0;
        for (j = 0; j<10; j++);
        
        OrSpiWrite(buf,4);
        
        for (j = 0; j<10; j++);
        // Latch Enable set
        SPI1_LE0_IO = 1;
//        for (j = 0; j<10; j++);
//        // Latch Enable clear
//        SPI1_LE0_IO = 0;
        for (j = 0; j<100; j++);
    }
}
