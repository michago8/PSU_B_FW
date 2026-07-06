#include <stdint.h>
#include <stdbool.h>
#include "definitions.h"
#include "OrUtils.h"





static bool fInit = false;
//! Byte swap unsigned int
uint32_t swap_uint32( uint32_t val )
{
    val = ((val << 8) & 0xFF00FF00 ) | ((val >> 8) & 0xFF00FF ); 
    return (val << 16) | (val >> 16);
}
/*
 * Check Init status
 */
bool OrUtilsInitEnd(void)
{
    return fInit;
}

/*
 * Set the init flag in end of initialization.
 */
void OrUtilsSetInitEnd(void)
{
    fInit = true;
    SYS_CONSOLE_MESSAGE(" UTILS:  Init End.\r\n");
}

// Big Endian for Modbus
uint8_t OrGetByte0(uint16_t val)
{
    return val >> 8;
}

uint8_t OrGetByte1(uint16_t val)
{
    return val & 0xFF;
}

uint16_t OrGetWord(uint8_t byte0, uint8_t byte1)
{
    return (uint16_t)(byte0*256 + byte1);
}

// Function to convert byte array to hexadecimal string
void OrByteArrayToHexString(unsigned char* byteArray, int byteArraySize, char* hexString) {
    size_t i;
    for (i = 0; i < byteArraySize; ++i) {
        sprintf(hexString + i * 3, " %02x", byteArray[i]);
    }
}