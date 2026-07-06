/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "OrGpio.h"
//#include "OrUart.h"
#include "OrTime.h"
#include "OrUtils.h"
#include "OrTCA9539.h"
#include "OrEmc2305.h"
#include "OrLm75.h"
#include "OrOp.h"
#include "OrSc16is741.h"

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    bool fI2cFail = false;
    uint8_t ctrI2cFail = 0;
    LATA = 0x00; /* Initial Latch Value */
    TRISACLR = 0x40; /* Direction Control */
    /* Initialize all modules */
    SYS_Initialize ( NULL );
//    GPIO_PinInterruptCallbackRegister(CN0_PIN, OrGpioRfIntHandler, 0);
//    GPIO_PinInterruptEnable(CN0_PIN);
//    GPIO_PinInterruptCallbackRegister(CN1_PIN, OrGpioRfIntHandler, 0);
//    GPIO_PinInterruptEnable(CN1_PIN);
    
    OrGpioInit();
    //OrAdcInit();
    OrTimeInit();
    //OrSpiInit();
    OrUtilsSetInitEnd();
    
    OrOpInit();
    
    while(OrTcaInit(OrOpIsRst()))
    //if (OrTcaInit())
    {
        SYS_CONSOLE_PRINT("I2C Initialize fail: %d\r\n", ++ctrI2cFail);
        if (ctrI2cFail >= 30)
        {
            fI2cFail = true;
            break;
        }
    }
    
    OrOpSetI2cFail(fI2cFail);
    
    OrEmcInit(OrOpIs9408());
    
    OrLm75_Init();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        //OrUartProc();
        
        OrGpioProc();
        
        OrOpProc();
        
        OrEmcProc(OrOpIs9408());
        
        OrSc16_Proc();
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

