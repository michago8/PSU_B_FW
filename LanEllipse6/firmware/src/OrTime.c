#include "definitions.h"
#include "OrUtils.h"
#include "OrGpio.h"
//#include "OrUart.h"
#include "OrI2c.h"
#include "OrEmc2305.h"
#include "OrOp.h"
#include "OrSc16is741.h"
#include "OrParser.h"
#include "OrTime.h"




/*
 * Init Function
 */
void OrTimeInit(void)
{
    SYS_TIME_HANDLE handle = SYS_TIME_CallbackRegisterMS(OrTimeCallback, (uintptr_t)0, TIME_PERIODIC, SYS_TIME_PERIODIC);

    if (handle != SYS_TIME_HANDLE_INVALID)
    {
        //timer is created successfully.
        SYS_CONSOLE_MESSAGE(" Timer: Time callback created successfully\r\n");
    }
}

/*
 * Callback function
 */
void OrTimeCallback(uintptr_t context)
{
    (void)context;
    static uint8_t ctr1S = 0;
    
    if (!OrUtilsInitEnd()) return;
    ctr1S += TIME_PERIODIC;
    if (ctr1S == 1000) 
    {
        ctr1S = 0;
        //SYS_CONSOLE_MESSAGE(" Timer: 1S message\r\n");
    }
    
    OrI2cPeriodic();
    OrGpioPeriodic();
    //OrUartPeriodic();
    OrOpPeriodic();
    OrEmcPeriodic();
    
    OrSc16_Periodic();
    
    OrParserPeriodic();
    
}