#include "definitions.h"
#include "OrUtils.h"
#include "OrLimits.h"
#include "OrGpio.h"
#include "OrAdc.h"
#include "OrEmc2305.h"
#include "OrParser.h"
#include "OrTCA9539.h"
#include "OrLm75.h"
#include "OrTmp117.h"
#include "OrDs1682.h"
#include "Or24Fc512.h"
#include "OrSc16is741.h"
#include "OrOp.h"
#include "OrConfig.h"

//#define PART_TEST



enum{
    a_0p18, a_0p0198b_1650, a_0p08, a_0p08c_2, a_0p08c_3, a_0p08b_1650, a_0p08b_1650c_2, a_0p08b_1650c_3, a_0p08b_1698, a_0p08b_1698c_3, a_0p0723, a_0p0322b_1650,
    a_0p08b_X1c_3, a_0p08b_X5c_3, a_0p08b_X6c_2, a_0p08b_X2, a_0p08b_X3, a_0p08b_X4
};

static void UpdateSsr(uint16_t val);
static void UpdateSsr_En(uint16_t val);
static void OpSsr(void);
static void ReadSw(void);
static void UpdateLeds(void);
static void ReadIntI04(void);
static void OnOffSwitch(void);
static void OnOffProc(void);
static void UpdateMuxConfig(uint16_t val);
static void UpdateMuxConfig2(uint8_t anP, uint8_t procP, uint8_t procF );
static void UpdateForcedFan(uint16_t val);
static void ReadAns(void);
static void ReadTemp(void);
static void ReadIc(void);
static uint16 Calc(uint16_t an, uint8_t param);
static void ResetCpu(void);
static void SaveIpSettings(void);
static uint32_t IpOrder(uint16_t high, uint16_t low);
static void IpRevOrder(uint32_t address, uint16_t *high, uint16_t *low);
static void ReadProc(void);
static void FanProc(void);
static void ReadTem(void);
static void WriteTem(void);
static void WriteTem_En(void);
static void SysConf(void);
static void CheckSys(bool virtChange);
static void ResetSystem(void);
static void PreResetSystem(void);
static void PreResetProc(void);
static void LampTestHandle(void);
static void IsoTestInit(void);
static void IsoTestProc(void);
static void ReadArduDfcOk(void);
static void UpdateTempTimers(void);
static uint16_t GetSeqDly(void);
static void ShutDownProc(void);
static void CheckDependencies(bool virtChange);
static void InitRst(void);

CalibX calibX = {.x = {1650, 1650, 1650, 1650, 1650, 1650}, .cs = 0};
#ifdef FAN_CHECK9_DIS
const uint8_t FanOrder[] = {1,2,3,4,5,6,7,8,17};
const uint8_t FanReg[] = {Regs_FanEsrA1, Regs_FanEsrA2, Regs_FanEsrA3, Regs_FanEsrA4,
                            Regs_FanEsrB1, Regs_FanEsrB2, Regs_FanEsrB3, Regs_FanEsrB4,
                            Regs_FanPsu};
#else

const uint8_t FanOrder[] = {1,2,3,4,5,6,7,8,9,17}; 
const uint8_t FanReg[] = {Regs_FanEsrA1, Regs_FanEsrA2, Regs_FanEsrA3, Regs_FanEsrA4,
                            Regs_FanEsrB1, Regs_FanEsrB2, Regs_FanEsrB3, Regs_FanEsrB4,
                            Regs_FanEsrC1, Regs_FanPsu};
#endif

static I2cStruct i2cArray[9] = {{.val = 0}, {.val = 0}, {.val = 0}, {.val = 0}, 
                                {.val = 0}, {.val = 0}, {.val = 0}, {.val = 0}, 
                                {.val = 0},};
static Ssr ssr = {.val = 0}, virtualSsr = {.val = 0};
static Ssr_En ssrEn = {.val = 0};
static Switches switches = {.val = 0};
static Switches_En switchesEn = {.val = 0};
static SysErrors_En sysErrorsEn = {.val = 0}; 
static PhaseStatus phaseStatus = {.val = 0};
//static PhaseStatus_En phaseStatusEn = {.val = 0};
static ExtStatus extStatus = {.val = 0};
static QapInd1 qapInd1 = {.val = 0};
static QapInd2 qapInd2 = {.val = 0};
static QapLeds qapLeds = {.val = 0};
static OverUnderVolt overUnderVolt = {.val = 0};
static void CommRstProc(void);
MainAndCb mainAndCb = {.val = 0};
MainAndCb_En mainAndCbEn = {.val = 0};
Leds leds = {.val = 0};
static Leds_En ledsEn = {.val = 0};
ConvPort convPortTable[] = CONV_PORT_TABLE;

static bool fUpdateSsr = false, fUpdateLeds = false, fUpdateLampTest = false, fUpdateQap = false,
        f100ms = false, f1s = false, f10s = false, f1min = true, fForceMux = false, fForceFan = false, onState = false;
static bool f9800 = false, f9408 = false, leakage = false, leakageCritic = false, leakage2 = false, /*leakageCritic2 = false,*/ fPowerDown = false, fI2cFail = false;
static bool isRst = false;
static uint8_t commRstState = 0, commRstDly = 0;
static uint16_t resetDly = 0, cap = 0, delta = 0, fFreqLife = 100, freq = 125, readDly = 0, fanDly = 0, onOffDly = 0, 
        ResetSysDly = 0, ResetSysOffDly = 0, isoDly = 0, isoDly2 = 0;
static uint8_t capIn = 0, readState = 0, fanState = 0, isoState = 0, isoState2 = 0, onOffState = 0;
static uint16_t eraseLimit, eraseCtr = 0, powerDownCtr = 0;
static uint16_t t1Ardu = 0, t1Dfc1 = 0, t1Dfc2 = 0, t2Ardu = 0, t2Dfc1 = 0, t2Dfc2 = 0, t1Limit;
static uint16_t ssrSdDly = SSR_SD_DLY;

void InitRst(void)
{
    if (RegsTable[Regs_RstInd] == 0x55)
    {
        RegsTable[Regs_RstInd] = 0;
        isRst = true;
        if (f9408){
           RegsTable[Regs_CtrlSsr] =  RegsTable[Regs_RstState];
           UpdateSsr(RegsTable[Regs_CtrlSsr]);
        }
        else{
           RegsTable[Regs_CtrlSsr_En] =  RegsTable[Regs_RstState];
           UpdateSsr_En(RegsTable[Regs_CtrlSsr_En]); 
        }
        Or24Write();
    }
}
bool OrOpIsRst(void)
{
    return isRst;
}

void OrOpSetCommRst(void)
{
    commRstState = 1;
}

void CommRstProc(void)
{
    switch(commRstState){
        case 0: //Idle
            break;
        case 1:
            RegsTable[Regs_RstInd] = 0x55;
            RegsTable[Regs_RstState] = f9408? RegsTable[Regs_CtrlSsr]: RegsTable[Regs_CtrlSsr_En];
            Or24Write();
            commRstDly = 10;
            commRstState++;
            break;
        case 2:
            if (commRstDly) break;
            Or24WriteCalib();
            commRstDly = 10;
            commRstState++;
            break;
        case 3:
            if (commRstDly) break;
            SYS_RESET_SoftwareReset();
            break;
        default:
            commRstState = 0;
            break;
    }
}
void OrOpSetI2cFail(bool flag)
{
    fI2cFail = flag;
}

// operations Initialize
void OrOpInit(void)
{
    RegsTable[Regs_VerH] = VERSION_H;
    RegsTable[Regs_VerM] = VERSION_M;
    RegsTable[Regs_VerL] = VERSION_L;
    RegsTable[Regs_EraseClock] = 10;
    eraseLimit = RegsTable[Regs_EraseClock] * 1000;
    RegsTable[Regs_BattleT1] = 5;
    t1Limit = 60 * RegsTable[Regs_BattleT1];
    ICAP2_Enable();
    TMR2_Start();
    Or24Read();
    Or24ReadCalib();
    SysConf();
    InitRst();
    OrSc16_Init(Ch_Ardu);
    OrSc16_Init(Ch_Dfc1);
    OrSc16_Init(Ch_Dfc2);
    OrSc16_Init(Ch_Heu);
}

bool OrOpIs9408(void)
{
    return f9408;
}

void SysConf(void)
{
    if (RegsTable[Regs_EepromPsuConf] == 1)
        f9408 = true;
    else if (RegsTable[Regs_EepromPsuConf] == 2)
        f9800 = true;
    
}
// should be called in 1 second timing
void ShutDownProc(void)
{
    if (RegsTable[Regs_PowerDown]){
        if (powerDownCtr){
            powerDownCtr--;
            if (powerDownCtr == 0)
            {
                RegsTable[Regs_PowerDown] = 0;
                
                if (f9408){
                    RegsTable[Regs_CtrlSsr] = 0;
                    UpdateSsr(0); //turn off all SSRs
                }
                else {
                    RegsTable[Regs_CtrlSsr_En] = 0;
                    UpdateSsr_En(0);
                }
            }
        }
    }
    else
        powerDownCtr = 0;
   
    //SYS_CONSOLE_PRINT("Power down Counter %d\r\n", powerDownCtr);
}
// Operations procedure
void OrOpProc(void)
{
    // check if to Reset MCU
    if (resetDly == 1)
    {
        resetDly = 0;
        SYS_RESET_SoftwareReset();
    }
    ReadIntI04();
    
    if (f100ms){
        f100ms = false;
        
        OnOffSwitch();
        
        ReadSw();
    }
    
    if (f1s){
        f1s = false;
        ReadAns();
        //SYS_CONSOLE_PRINT("switches: 0x%X\r\n", i2cArray[I2C2_77].val);
        //SYS_CONSOLE_PRINT("Erase, Erase Limit: %u, %u\r\n", RegsTable[Regs_EraseClock], eraseLimit);
        ReadTemp();
        //cap = ICAP2_CaptureBufferRead();
        //SYS_CONSOLE_PRINT("cap, delta, freq: %d, %d, %d\r\n", cap, delta, freq);
        ReadArduDfcOk();
        
        UpdateTempTimers();
        //SYS_CONSOLE_PRINT("ARDU T1, limit, ARDU T2: %d, %d, %d\r\n", t1Ardu, t1Limit, t2Ardu);
        
        ShutDownProc(); //Shut Down delay
        
        PreResetProc(); // Pre Reset System Delay
        
    }
    
    if (f1min){
        f1min = false;
        ReadTem();
    }
    
    OnOffProc();
    
    LampTestHandle();
    
    OpSsr();
    
    if (f10s)
    {
        f10s = false;
        CheckSys(true);
    }
    else
        CheckSys(true);
    
    ReadIc();
    
    ReadProc();
    
    FanProc();
    
    UpdateLeds();
    
    IsoTestProc();
    
    CommRstProc();
    
}
// this function should be called every second
void UpdateTempTimers(void)
{
    if (sc16Status.battleShort)
    {
        // ARDU
        if (sc16Status.arduCritTemp){
            if (t2Ardu < 60) t2Ardu++;
            else{
                if (ssr.ardu){
                    ssr.ardu = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t2Ardu = 0;
            
        // DFC1
        if (sc16Status.dfc1CritTemp){
            if (t2Dfc1 < 60) t2Dfc1++;
            else{
                if (ssr.dfc){
                    ssr.dfc = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t2Dfc1 = 0;
        
        // DFC2
        if (sc16Status.dfc2CritTemp){
            if (t2Dfc2 < 60) t2Dfc2++;
            else{
                if (ssr.dfc){
                    ssr.dfc = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t2Dfc2 = 0;
        
    }
    else{ // Battle Short is not pressed
        // ARDU
        if (sc16Status.arduOverTemp){
            if (t1Ardu < t1Limit) t1Ardu++;
            else{
                if (ssr.ardu){
                    ssr.ardu = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t1Ardu = 0;
            
        // DFC1
        if (sc16Status.dfc1OverTemp){
            if (t1Dfc1 < t1Limit) t1Dfc1++;
            else{
                if (ssr.dfc){
                    ssr.dfc = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t1Dfc1 = 0;
        
        // DFC2
        if (sc16Status.dfc2OverTemp){
            if (t1Dfc2 < t1Limit) t1Dfc2++;
            else{
                if (ssr.dfc){
                    ssr.dfc = 0;
                    fUpdateSsr = true;
                }
                
            }
        }
        else t1Dfc2 = 0;
    }
    if (fUpdateSsr){
        RegsTable[Regs_CtrlSsr] = ssr.val;
        UpdateSsr(ssr.val);
    }
}


void IsoTestInit(void)
{
    isoState = 1;
    UpdateMuxConfig2(0,0,3);
    readDly = 500;
    readState = 2;
    
}
void IsoTest2Init(void)
{
    isoState2 = 1;
    UpdateMuxConfig2(0,8,3);
    readState = (f9408)? 11: 15;
}
void ReadArduDfcOk(void)
{
    ConvPort cpU81 = convPortTable[I2C2_76];
    ConvPort cpU77 = convPortTable[I2C1_76];
    if (!OrTcaReadInput(cpU81.address, cpU81.ch, &i2cArray[I2C2_76].val))
    {
        qapInd2.dfc1Ok = !i2cArray[I2C2_76].P14;
        qapInd2.dfc2Ok = !i2cArray[I2C2_76].P15;
    }
    if (!OrTcaReadInput(cpU77.address, cpU77.ch, &i2cArray[I2C1_76].val))
    {
        qapInd2.arduOk = !i2cArray[I2C1_76].P15;
    }
    RegsTable[Regs_QapInd2] = qapInd2.val;
    //qadInd2
}
void IsoTestProc(void)
{
    ConvPort cpSwU81 = convPortTable[I2C2_76];
    switch (isoState)
    {
        case 0:
            break;
        case 1:
            i2cArray[I2C2_76].P3 = 1;
            OrTcaWriteOutput(cpSwU81.address, cpSwU81.ch, i2cArray[I2C2_76].val);
            isoState++;
            isoDly = 2000;
        case 2:
            if (isoDly) break;
            i2cArray[I2C2_76].P3 = 0;
            OrTcaWriteOutput(cpSwU81.address, cpSwU81.ch, i2cArray[I2C2_76].val);
            isoState++;
            isoDly = 3000;
            break;
        case 3:
            if (isoDly) break;
            isoState = 0;
            break;
        default:
            break;
    }
    
    switch (isoState2)
    {
        case 0:
            break;
        case 1:
            i2cArray[I2C2_76].P1 = 1;
            OrTcaWriteOutput(cpSwU81.address, cpSwU81.ch, i2cArray[I2C2_76].val);
            isoState2++;
            isoDly2 = 2000;
        case 2:
            if (isoDly2) break;
            i2cArray[I2C2_76].P1 = 0;
            OrTcaWriteOutput(cpSwU81.address, cpSwU81.ch, i2cArray[I2C2_76].val);
            isoState2++;
            isoDly2 = 3000;
            break;
        case 3:
            if (isoDly2) break;
            isoState2 = 0;
            break;
        default:
            break;
    }
    
}
void LampTestHandle(void)
{
    static bool lampState = false;
    if (f9408)
    {
        if (switches.lampTest != lampState)
        {
            lampState = switches.lampTest;
            ssr.lampTest = (lampState)? 1: 0;
            RegsTable[Regs_CtrlSsr] = ssr.val;
            //UpdateSsr_En(ssrEn.val);
            //i2cArray[I2C1_76].P16 = switches.lampTest;
            i2cArray[I2C2_75].P14 = switches.lampTest;
            fUpdateLampTest = true;
        }
    }
    else if (f9800)
    {
        if (switchesEn.lampTest != lampState)
        {
            lampState = switchesEn.lampTest;
            ssrEn.lampTest = (lampState)? 1: 0;
            RegsTable[Regs_CtrlSsr_En] = ssrEn.val;
            //UpdateSsr_En(ssrEn.val);
            //i2cArray[I2C1_76].P16 = switchesEn.lampTest;
            i2cArray[I2C2_75].P14 = switchesEn.lampTest;
            fUpdateLampTest = true;
        }
    }
}

void ReadIc(void)
{
   uint16_t last = 0;
   if (ICAP2_CaptureStatusGet())
   {
       last = cap;
       // we use capture in to measure if we have 2 measures in a period of time
       // we clear the capIn counter add get it before the measure to see if the measure is valid
       capIn++;
       if (capIn > 2) capIn = 2;
       cap = ICAP2_CaptureBufferRead();
       delta = cap - last;
       if (delta > 10000){
         freq = (1250000 + (delta >> 1))/ delta; //add delta/2 for rounding
       }
       else freq = 125;
       RegsTable[Regs_MaintFreq] = freq;
       fFreqLife = 100;
   }
   if (!fFreqLife){
       freq = 0;
       RegsTable[Regs_MaintFreq] = freq;
   }
       
}

void ReadTemp(void)
{
    uint8_t temp;
    
    if (f9800){
        if (!OrLm75_Read(&temp)){
            RegsTable[Regs_TempPsuPcb_En] = temp;
        }
        if (!OrTmp117_Read((int8_t*)&temp)){
            RegsTable[Regs_TempPsuDrawer_En] = temp;
        }
        sysErrorsEn.OverTemp = (RegsTable[Regs_TempPsuPcb_En] > LIMIT_TEMP_PSU) || 
                (RegsTable[Regs_TempPsuDrawer_En] > LIMIT_TEMP_PSU);
        sysErrorsEn.CriticalTemp = (RegsTable[Regs_TempPsuPcb_En] > LIMIT_TEMP_PSU_CRT) || 
                (RegsTable[Regs_TempPsuDrawer_En] > LIMIT_TEMP_PSU_CRT);
        RegsTable[Regs_SysErrors_En] = sysErrorsEn.val; 
//        if (((!RegsTable[Regs_BattleShort])&& (sysErrorsEn.OverTemp))||
//                ((RegsTable[Regs_BattleShort])&& (sysErrorsEn.CriticalTemp)))
//            {
//                RegsTable[Regs_CtrlSsr_En] = 0;
//                UpdateSsr_En(0);
//            }
        if (sysErrorsEn.CriticalTemp)
        {
            RegsTable[Regs_CtrlSsr_En] = 0;
            UpdateSsr_En(0);
        }
            
    }  
    else if (f9408){
        if (!OrLm75_Read(&temp)){
            RegsTable[Regs_TempPsuPcb] = temp;
        }
        if (!OrTmp117_Read((int8_t*)&temp)){
            RegsTable[Regs_TempPsuDrawer] = temp;
        }
        
    }
}

void ReadAns(void)
{
    uint8_t i;
    uint16_t  an[7] = {0};
    
    an[0] = OrAdcTo_mV(OrAdcRead(AN1));
    an[1] = OrAdcTo_mV(OrAdcRead(AN2));
    an[2] = OrAdcTo_mV(OrAdcRead(AN3));
    an[3] = OrAdcTo_mV(OrAdcRead(AN4));
    an[4] = OrAdcTo_mV(OrAdcRead(AN5));
    an[5] = OrAdcTo_mV(OrAdcRead(AN6));
    an[6] = OrAdcTo_mV(OrAdcRead(AN7));
    
    if (fForceMux)
    {
        for (i = 0; i< 7; i++)
        {
            RegsTable[i + Regs_MaintAns] = an[i];
        }
    }
    
    if (fForceFan)
    {
        uint16_t val;
        if (!OrEmcReadRpm(RegsTable[Regs_MaintFanCh], &val))
        {
            RegsTable[Regs_MaintFanRpm] = val;
        }
    }
     
    
}


void UpdateLeds(void)
{
    static bool fStart = true;
    ConvPort cpU80 = convPortTable[I2C2_75];
    ConvPort cpU77 = convPortTable[I2C1_76];
    ConvPort cpU75 = convPortTable[I2C1_74];
    ConvPort cpU76 = convPortTable[I2C1_75];
    if (fStart || fUpdateLeds)
    {
        fUpdateLeds = false;
        RegsTable[Regs_Leds] = leds.val;
        RegsTable[Regs_Leds_En] = ledsEn.val;
        
        if (f9408){
            i2cArray[I2C2_75].P0 = leds.fail;
            i2cArray[I2C2_75].P1 = leds.psCbFail;
            i2cArray[I2C2_75].P2 = leds.ok;
            i2cArray[I2C2_75].P3 = leds.sensorStackTemp;
            i2cArray[I2C2_75].P4 = leds.hvpFail;
            i2cArray[I2C2_75].P5 = leds.fanIndication;
            i2cArray[I2C2_75].P6 = leds.heu;
            i2cArray[I2C2_75].P7 = leds.esrB;
            i2cArray[I2C2_75].P10 = leds.systemOk;
            i2cArray[I2C2_75].P11 = leds.hfMon;
            i2cArray[I2C2_75].P12 = leds.esrA;
            i2cArray[I2C2_75].P13 = leds.abjb;
            //i2cArray[I2C2_75].P14 = leds.spare;
            i2cArray[I2C2_75].P15 = leds.mainOnOff;
        }
        else if (f9800){
            i2cArray[I2C2_75].P0 = ledsEn.fail;
            i2cArray[I2C2_75].P2 = ledsEn.ok;
            i2cArray[I2C2_75].P4 = ledsEn.hvpFail;
            i2cArray[I2C2_75].P10 = ledsEn.leakage;
            i2cArray[I2C2_75].P13 = ledsEn.abjb;
            i2cArray[I2C2_75].P15 = ledsEn.mainOnOff;
            SYS_CONSOLE_PRINT("LED ABJB: %u\r\n", ledsEn.abjb);
        }
        
        if (!OrTcaWriteOutput(cpU80.address, cpU80.ch, i2cArray[I2C2_75].val));
    }
    if (fStart || fUpdateLampTest){
        fUpdateLampTest = false;
        //OrTcaWriteOutput(cpU77.address, cpU77.ch, i2cArray[I2C1_76].val);
        OrTcaWriteOutput(cpU80.address, cpU80.ch, i2cArray[I2C2_75].val);
    }
    
    if (f9408 && (fStart || fUpdateQap)){
        fUpdateQap = false;
        i2cArray[I2C1_74].val = qapLeds.qap1L;
        i2cArray[I2C1_75].val = qapLeds.qap1H + (qapLeds.qap2L << 6);
        i2cArray[I2C1_76].val = qapLeds.qap2H;
        i2cArray[I2C1_76].P14 = !onState;
        OrTcaWriteOutput(cpU77.address, cpU77.ch, i2cArray[I2C1_76].val);
        OrTcaWriteOutput(cpU76.address, cpU76.ch, i2cArray[I2C1_75].val);
        OrTcaWriteOutput(cpU75.address, cpU75.ch, i2cArray[I2C1_74].val);
    }
    fStart = false;
}
void ReadIntI04(void)
{
    static bool fStart = true;
    ConvPort cpSwU78 = convPortTable[I2C1_77];
    if (fStart || (IO4_INTn == 0))
    {
        fStart = false; // we update with an interrupt leg but we need to get start status
        if (!OrTcaReadInput(cpSwU78.address, cpSwU78.ch, &i2cArray[I2C1_77].val))
        {
            mainAndCb.ups3          = !i2cArray[I2C1_77].P5;
            mainAndCb._3pPlatform   = !i2cArray[I2C1_77].P6;
            mainAndCb.ups1          = !i2cArray[I2C1_77].P7;
            mainAndCb.ups2          = !i2cArray[I2C1_77].P10;
            mainAndCb._1pPlatform   = !i2cArray[I2C1_77].P11;
            mainAndCb.ups4          = !i2cArray[I2C1_77].P12;
            switches.lampTest       = !i2cArray[I2C1_77].P13;
            mainAndCb.main          = i2cArray[I2C1_77].P14; 
            //RegsTable[Regs_3pPhase] = i2cArray[I2C1_77].P15;
            RegsTable[Regs_MainAndCB] = (mainAndCb.val & 0x7F);

            extStatus.pcmMainOnOff  = !i2cArray[I2C1_77].P0;
            extStatus.pqapErase     = !i2cArray[I2C1_77].P1;
            extStatus.pqapBattle    = i2cArray[I2C1_77].P2;
            extStatus.pqapMainOnOff = !i2cArray[I2C1_77].P3;
            extStatus.sqapErase     = !i2cArray[I2C1_77].P4;
            RegsTable[Regs_ExtStatus] = extStatus.val;
            SYS_CONSOLE_PRINT("I2C1_77, ExtStatus, pqapErase:: 0x%X, 0x%X, %u\r\n", i2cArray[I2C1_77].val, RegsTable[Regs_ExtStatus], extStatus.pqapErase);
            sc16Status.battleShort = RegsTable[Regs_BattleShort] || extStatus.pqapBattle;      
        }
        
    }
}

uint16_t GetSeqDly(void)
{
    if ((RegsTable[Regs_PuSeqDly] == 0)||(RegsTable[Regs_PuSeqDly] == 0xFFFF))
        return 250;
    else
        return RegsTable[Regs_PuSeqDly];
}

void OnOffSwitch(void)
{
    static bool onLast = false, sw1Last = false, sw2Last = false;
    
    if (f9408){
        if (isRst){
            onLast = mainAndCb.main;
            onState = (RegsTable[Regs_CtrlSsr] != 0);
            isRst = false;
        }
        //TBD Test if input voltage is OK
        if ((mainAndCb.main != onLast) || (ResetSysDly == 1)) {
            ResetSysDly = 0;
            onLast = mainAndCb.main;
            if (mainAndCb.main == 0){
                RegsTable[Regs_CtrlSsr] = 0;
                UpdateSsr(RegsTable[Regs_CtrlSsr]); //turn off all SSRs
                onState = false;
            }
            else{
                onState = true;
                onOffState = 1;
                onOffDly = GetSeqDly();
            }
        }
        else if (mainAndCb.main == 1)
        {
            if (((sw1Last != extStatus.pcmMainOnOff) && extStatus.pcmMainOnOff)||
                    ((sw2Last != extStatus.pqapMainOnOff) && extStatus.pqapMainOnOff)||
                    fPowerDown)
            {
                if (!fPowerDown)
                    onState = !onState; // change state
                else{ //fPowerDown is Set
                    fPowerDown = false;
                    if (!onState){ //system is OFF ,nothing to do
                        return;
                    } else {
                        onState = false; // start shutdown process
                    }
                }
                if (!onState){
                    //RegsTable[Regs_CtrlSsr] = 0;
                    //UpdateSsr(RegsTable[Regs_CtrlSsr]); //turn off all SSRs
                    RegsTable[Regs_PowerDown] = 1;
                    powerDownCtr = ((RegsTable[Regs_SdDly] == 0)||(RegsTable[Regs_SdDly] == 0xFFFF))? 59: RegsTable[Regs_SdDly]; 
                }
                else{
                    // check to see if we the shutdown proc was completed. so we need to turn on the system.
                    if (RegsTable[Regs_PowerDown] == 0){
                        onOffState = 1;
                        onOffDly = GetSeqDly();
                    }
                    else // if shutdown process didn't finish we don't need to start power ON only stop shutdown
                        RegsTable[Regs_PowerDown] = 0;
                }
            }
        }
        sw1Last = extStatus.pcmMainOnOff;
        sw2Last = extStatus.pqapMainOnOff;
    }
    else if (f9800){
        if (isRst){
            onLast = mainAndCb.main;
            isRst = false;
        }
        // TBD test if input voltage is OK
        if ((mainAndCbEn.main != onLast) || (ResetSysDly == 1)) {
            ResetSysDly = 0;
            onLast = mainAndCbEn.main;
            if (mainAndCbEn.main == 0){
                RegsTable[Regs_CtrlSsr_En] = 0;
                UpdateSsr_En(RegsTable[Regs_CtrlSsr_En]); //turn off all SSRs
            }
            else{
                onOffState = 1;
                onOffDly = GetSeqDly();
            }
        }
        else if (mainAndCbEn.main == 1){
            if (fPowerDown)
            {
                fPowerDown = false;
                powerDownCtr = ((RegsTable[Regs_SdDly] == 0)||(RegsTable[Regs_SdDly] == 0xFFFF))? 59: RegsTable[Regs_SdDly]; 
                //SYS_CONSOLE_PRINT("Power down Counter2 %d\r\n", powerDownCtr);
            }
        }
    }
    
}

void OnOffProc(void)
{
    if (f9408){
        switch (onOffState){
            case 0:
                break;
            case 1:
                if (onOffDly) break;
                ssrSdDly = SSR_SD_DLY;
                ssr.esrB = (switches.esrB)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 2;
                break;
            case 2:
                if (onOffDly) break;
                ssr.esrA = (switches.esrA)? 1: 0;
                ssr.hfMon = (switches.hfMon)? 1: 0;
                ssr.cEsm = (switches.cEsm)? 1: 0;
                ssr.service = (switches.service)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 3;
                break;
            case 3:
                if (onOffDly) break;
                ssr.ups2Occ = (switches.ups2Occ)? 1: 0;
                RegsTable[Regs_CtrlSsr_En] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 4;
                break;
            case 4:
                if (onOffDly) break;
                ssr.heu = (switches.heu)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 5;
                break;
            case 5:
                if (onOffDly) break;
                ssr.dfc = (switches.dfc)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 6;
                break;
            case 6:
                if (onOffDly) break;
                ssr.ardu = (switches.ardu)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffDly = GetSeqDly();
                onOffState = 7;
                break;
            case 7:
                if (onOffDly) break;
                ssr.afe = (switches.afe)? 1: 0;
                ssr.occ1 = (switches.occ1)? 1: 0;
                ssr.occ2 = (switches.occ2)? 1: 0;
                ssr.occ3 = (switches.occ3)? 1: 0;
                RegsTable[Regs_CtrlSsr] = ssr.val;
                UpdateSsr(ssr.val);
                onOffState = 0;
                break;
        }
    }
    else if (f9800){
        switch (onOffState){
            case 0:
                break;
            case 1:
                if (onOffDly) break;
                ssrEn.heu = (switchesEn.heu)? 1: 0;
                RegsTable[Regs_CtrlSsr_En] = ssrEn.val;
                UpdateSsr_En(ssrEn.val);
                onOffDly = GetSeqDly();
                onOffState = 2;
                break;
            case 2:
                if (onOffDly) break;
                ssrEn.dfc1 = (switchesEn.dfc1)? 1: 0;
                ssrEn.dfc2 = (switchesEn.dfc2)? 1: 0;
                ssrEn.dfc3 = (switchesEn.dfc3)? 1: 0;
                ssrEn.dfc4 = (switchesEn.dfc4)? 1: 0;
                RegsTable[Regs_CtrlSsr_En] = ssrEn.val;
                UpdateSsr_En(ssrEn.val);
                onOffDly = GetSeqDly();
                onOffState = 3;
                break;
            case 3:
                if (onOffDly) break;
                ssrEn.ardu = (switchesEn.ardu)? 1: 0;
                RegsTable[Regs_CtrlSsr_En] = ssrEn.val;
                UpdateSsr_En(ssrEn.val);
                onOffDly = GetSeqDly();
                onOffState = 4;
                break;
            case 4:
                if (onOffDly) break;
                ssrEn.abjb = (switchesEn.abjb)? 1: 0;
                ssrEn.service = (switchesEn.service)? 1: 0;
                ssrEn.spare = (switchesEn.spare)? 1: 0;
                RegsTable[Regs_CtrlSsr_En] = ssrEn.val;
                UpdateSsr_En(ssrEn.val);
                onOffState = 0;
                break;
        }
    }
    
}
// read switches
void ReadSw(void)
{
    ConvPort cpSwU146 = convPortTable[I2C2_77];
    // update SSR
    if (!OrTcaReadInput(cpSwU146.address, cpSwU146.ch, &i2cArray[I2C2_77].val))
    {
        switches.val &= ~0x7FFF;
        switches.val |= ((~i2cArray[I2C2_77].val) & 0x7FFF);
        //switches.lampTest = i2cArray[I2C1_77].P13;
        RegsTable[Regs_Switches] = (switches.val & 0x7FFF);  
        
        switchesEn.ardu     = !i2cArray[I2C2_77].P0;
        switchesEn.dfc2     = !i2cArray[I2C2_77].P1;
        switchesEn.heu      = !i2cArray[I2C2_77].P2;
        switchesEn.dfc4     = !i2cArray[I2C2_77].P3;
        switchesEn.service  = !i2cArray[I2C2_77].P7;
        switchesEn.dfc1     = !i2cArray[I2C2_77].P11;
        switchesEn.spare    = !i2cArray[I2C2_77].P12;
        switchesEn.dfc3     = !i2cArray[I2C2_77].P13;
        switchesEn.abjb     = !i2cArray[I2C2_77].P15;
        RegsTable[Regs_Switches_En] = (switchesEn.val & 0x3FF);
    }
}
// Operation Periodic (1mS)
void OrOpPeriodic(void)
{
    static uint8_t cnt100ms = 0, cntMin = 0, cnt10s = 0;
    static uint16_t cnt1s = 0;
    cnt100ms++;
    if (cnt100ms > 99)
    {
        cnt100ms = 0;
        f100ms = true;
    }
    cnt1s++;
    if (cnt1s > 999)
    {
        cnt1s = 0;
        f1s = true;
        cnt10s++;
        if (cnt10s > 9)
        {
            cnt10s = 0;
            f10s = true;
        }    
        cntMin++;
        if (cntMin > 59)
        {
            cntMin = 0;
            f1min = true;
        }
    }
    
    if (resetDly > 1) resetDly--;
    if (readDly) readDly--;
    if (fanDly) fanDly--;
    if (onOffDly) onOffDly--;
    if (ResetSysDly > 1) ResetSysDly--;
    if (isoDly) isoDly--;
    if (isoDly2) isoDly2--;
    if (fFreqLife) fFreqLife--;
    if (ssrSdDly) ssrSdDly--;
    if (commRstDly) commRstDly--;
    
    if (extStatus.pqapErase || extStatus.sqapErase)
    {
        if (eraseCtr < eraseLimit)
            eraseCtr++;
        else
            RegsTable[Regs_EraseStatus] = 1;
    }
    else 
       eraseCtr = 0; 
}

// Communication Commands 
void OrOpCmds(uint16_t address)
{
    switch(address){
        case Regs_CtrlSsr:
            RegsTable[address] &= 0x1FFF; // disable unwanted operation (Lamp test through communication)
            UpdateSsr(RegsTable[address]);
            break;
        case Regs_CtrlSsr_En:
            RegsTable[address] &= 0x1FF; // disable unwanted operation (Lamp test through communication)
            UpdateSsr_En(RegsTable[address]);
            break;
        case Regs_EraseClock:
            RegsTable[address] = (RegsTable[address] < 5) ? 5 : RegsTable[address];
            RegsTable[address] = (RegsTable[address] > 60) ? 60: RegsTable[address];
            eraseLimit = RegsTable[address] * 1000;
            break;
        case Regs_TemH:
                WriteTem();
            break;
        case Regs_TemH_En:
                WriteTem_En();
            break;
        case Regs_BattleT1:
            RegsTable[address] = (RegsTable[address] < 1) ? 1 : RegsTable[address];
            RegsTable[address] = (RegsTable[address] > 10) ? 10: RegsTable[address];
            t1Limit = 60 * RegsTable[address];
            break;
        case Regs_SaveNetConf:
            if (RegsTable[address])
            {
                RegsTable[address] = 0;
                SaveIpSettings();
            }
            break;
        case Regs_ResetCpu:
            if (RegsTable[address]){
                RegsTable[address] = 0;
                ResetCpu();
            }
            break;
        case Regs_ResetSystem:
            if (RegsTable[address]){
                RegsTable[address] = 0;
                PreResetSystem();
                //ResetSystem();
            }
            break;
        case Regs_SaveToEeprom:
            if (RegsTable[address])
            {
                RegsTable[address] = 0;
                Or24Write();
            }
            break;
        case Regs_IsoDirectBits:
            if (RegsTable[address] == 1) //Test
            {
                RegsTable[address] = 0;
                IsoTestInit();
            }
            break;
//        case Regs_IsoBits3p:
//            if (RegsTable[address] == 1) //Test
//            {
//                RegsTable[address] = 0;
//                IsoTest2Init();
//            }
            
        case Regs_IsoBits_En:
            if (RegsTable[address] == 1) //Test
            {
                RegsTable[address] = 0;
                IsoTest2Init();
            }
            break;
        case Regs_MaintForce:
            fForceMux = RegsTable[address] & 0x1;
            fForceFan = RegsTable[address] & 0x2;
            break;
        case Regs_MaintConfig:
            if (fForceMux)
                UpdateMuxConfig(RegsTable[address]);
            break;
        case Regs_MaintFanPwm:
            if (fForceFan)
                UpdateForcedFan(RegsTable[address]);
            break;
        case Regs_BattleShort:
            if (f9408)
            {
                sc16Status.battleShort = RegsTable[Regs_BattleShort] || extStatus.pqapBattle;
            }
            break;
        case Regs_PowerDown:
        {   
            static uint16_t powerDownState = 0;
            if ((RegsTable[address])&&(powerDownState == 0))
            {
                fPowerDown = true;
            }
            powerDownState = RegsTable[address];
        }
            break;
        default:
            break;
    }
}

void UpdateMuxConfig(uint16_t val)
{
    MuxConfig muxConfig = {.val = val};
    
    ANALOG_MUX_S0 = muxConfig.SelAnP0;
    ANALOG_MUX_S1 = muxConfig.SelAnP1;
    ANALOG_MUX_S2 = muxConfig.SelAnP2;
    RMS_MUX_S0 = muxConfig.SelProcP0;
    RMS_MUX_S1 = muxConfig.SelProcP1;
    RMS_MUX_S2 = muxConfig.SelProcP2;
    RMS_MUX_S3 = muxConfig.SelProcP3;
    RMS_FREQ_MUX_S0 = muxConfig.SelProcF0;
    RMS_FREQ_MUX_S1 = muxConfig.SelProcF1;
}

void UpdateMuxConfig2(uint8_t anP, uint8_t procP, uint8_t procF )
{
    MuxConfig muxConfig = {.SelAnP = anP, .SelProcP = procP, .SelProcF = procF};
    UpdateMuxConfig(muxConfig.val);
}

void UpdateForcedFan(uint16_t val)
{
    OrEmcSetForcedPwm(RegsTable[Regs_MaintFanCh], (uint8_t)val);
}

void UpdateSsr(uint16_t val)
{
    ssr.val = val;
    
    i2cArray[I2C2_74].val &= ~0x1FFF;
    i2cArray[I2C2_74].val |= (val & 0x1FFF);
    fUpdateSsr = true;
}

void UpdateSsr_En(uint16_t val)
{
    ssrEn.val = val;
    
    i2cArray[I2C2_74].P0 = ssrEn.ardu;
    i2cArray[I2C2_74].P1 = ssrEn.dfc2;
    i2cArray[I2C2_74].P2 = ssrEn.heu;
    i2cArray[I2C2_74].P3 = ssrEn.dfc4;
    i2cArray[I2C2_74].P4 = ssrEn.abjb;
    i2cArray[I2C2_74].P7 = ssrEn.service;
    i2cArray[I2C2_74].P11 = ssrEn.dfc1;
    i2cArray[I2C2_74].P12 = ssrEn.spare;
    i2cArray[I2C2_74].P13 = ssrEn.dfc3;
    //SYS_CONSOLE_PRINT("reg: 0x%X, 0x%X\r\n", i2cArray[I2C2_74].val, reg.val);
    fUpdateSsr = true;
}

void OpSsr(void)
{
    if (fUpdateSsr)
    {
        ConvPort cpSsr = convPortTable[I2C2_74];
        fUpdateSsr = false;
        // update SSR
        if (!OrTcaWriteOutput(cpSsr.address, cpSsr.ch, i2cArray[I2C2_74].val));
    }
}

void CheckSys(bool virtChange)
{
    //const uint8_t Table208V[] = {Regs_3pL1V, Regs_3pL2V, Regs_3pL3V};
    const uint8_t Table115V[] = {Regs_UpsV, Regs_DirectV, /*Regs_Ups2V, Regs_Ups3V, Regs_Ups4V*/};
    const uint8_t Table60Hz[] = {/*Regs_3pL1F, Regs_3pL2F, Regs_3pL3F, */Regs_UpsF, 
                                Regs_DirectF,/* Regs_Ups2F, Regs_Ups3F, Regs_Ups4F*/};
    const uint8_t Table28V[] =  {/*Regs_HeuV,*/ Regs_EsrRV, Regs_EsrLV, Regs_CesmV};
    const uint8_t TableA[] = TABLE_A;
    const uint8_t TableALimit[] = TABLE_A_LIMIT;
    const uint16_t TableAOut[] = TABLE_A_OUT;
                                      
    uint8_t i, lastIdx = 0xFF;
    bool ind = false, qapPsuFail = false/*, fOverTemp = false*/, Table28EnCheck[sizeof(Table28V)] = {0}/*, _1pOverUnderFail = false*/;
    static uint32_t qapLedsLast = 0;
    
        
    //Over Under voltage 
//        for (i=0; i< sizeof(Table208V); i++)
//            if ((RegsTable[Table208V[i]] < LIMIT_208V_L)||(RegsTable[Table208V[i]] > LIMIT_208V_H))
//            {
//                ind = true;
//                break;
//            }
//        overUnderVolt._3pPlatform = ind;
//        phaseStatus._3p1 = (RegsTable[Table208V[0]] < LIMIT_LIVE_PH);
//        phaseStatus._3p2 = (RegsTable[Table208V[1]] < LIMIT_LIVE_PH);
//        phaseStatus._3p3 = (RegsTable[Table208V[2]] < LIMIT_LIVE_PH);
    RegsTable[Regs_3PhaseStatus] = phaseStatus.val;
    ind = false;

    for (i=0; i< sizeof(Table115V); i++){
        if ((RegsTable[Table115V[i]] < LIMIT_115V_L)||(RegsTable[Table115V[i]] > LIMIT_115V_H))
        {
            ind = true;
            lastIdx = i;
        }
        overUnderVolt._1pPlatform = (Table115V[i] == Regs_UpsV)? (lastIdx == i): overUnderVolt._1pPlatform;
        overUnderVolt.ups1 = (Table115V[i] == Regs_DirectV)? (lastIdx == i): overUnderVolt.ups1;
        //overUnderVolt.ups2 = (Table115V[i] == Regs_Ups2V)? (lastIdx == i): overUnderVolt.ups2;
        //overUnderVolt.ups3 = (Table115V[i] == Regs_Ups3V)? (lastIdx == i): overUnderVolt.ups3;
        //overUnderVolt.ups4 = (Table115V[i] == Regs_Ups4V)? (lastIdx == i): overUnderVolt.ups4;
    }
    //_1pOverUnderFail = ind;
    RegsTable[Regs_OverUnderV] = overUnderVolt.val;
    if (!ind){
        for (i=0; i< sizeof(Table60Hz); i++)
            if ((RegsTable[Table60Hz[i]] < LIMIT_60HZ_L)||(RegsTable[Table60Hz[i]] > LIMIT_60HZ_H))
            {
                ind = true;
                break;
            }
    }
    leds.ok = (!ind) && (!overUnderVolt._3pPlatform) && (!fI2cFail);
    leds.fail = !leds.ok;

    ind = false;
    if (!ind){
        Table28EnCheck[0] = ssr.heu && switches.heu;
        Table28EnCheck[1] = ssr.esrA && switches.esrA;
        Table28EnCheck[2] = ssr.esrB && switches.esrB;
        Table28EnCheck[3] = ssr.cEsm && switches.cEsm;
        for (i=0; i< sizeof(Table28V); i++)
        if (Table28EnCheck[i] && ((RegsTable[Table28V[i]] < LIMIT_28V_L)||(RegsTable[Table28V[i]] > LIMIT_28V_H)))
        {
            ind = true;
            break;
        }
    }
    qapPsuFail  = ind;
    leds.psCbFail = ind || ((RegsTable[Regs_MainAndCB] & 0x7E) != 0x7E);
    leds.hvpFail = 0;
    leds.sensorStackTemp = ((RegsTable[Regs_ExtStatus] & 0x2A) > 0);
    ind = false;
    for (i=0; i< sizeof(FanReg); i++)
        if (RegsTable[FanReg[i]] < LIMIT_FAN)
        {
            ind = true;
            break;
        }
    leds.fanIndication = ind;

    extStatus.heuOk = !sc16Status.heuNotOk;
    extStatus.heuFail = sc16Status.heuNotOk;
    extStatus.dfc1OverTemp = sc16Status.dfc1OverTemp;
    extStatus.dfc2OverTemp = sc16Status.dfc2OverTemp;
    extStatus.arduOverTemp = sc16Status.arduOverTemp;
    extStatus.arduCritTemp = sc16Status.arduCritTemp;

    leds.heu = !extStatus.heuOk; //not OK LED


    leds.esrB = ssr.esrB && switches.esrB;
    leds.esrA = ssr.esrA && switches.esrA;
    leds.hfMon = leds.esrA && ssr.hfMon && switches.hfMon;
    leds.abjb = leds.esrB && switches.abjb;
    leds.mainOnOff = onState;
    leds.spare = 0;


    //over temp
    qapInd1.psuOverTemp = (RegsTable[Regs_TempPsuDrawer] > LIMIT_TEMP_PSU) || (RegsTable[Regs_TempPsuPcb] > LIMIT_TEMP_PSU);
    qapInd1.esrA_OverTemp = (RegsTable[Regs_TempEsrL_U] > LIMIT_TEMP_ESR) || 
                            (RegsTable[Regs_TempEsrL_F] > LIMIT_TEMP_ESR) || 
                            (RegsTable[Regs_TempEsrL_D] > LIMIT_TEMP_ESR);
    qapInd1.esrB_OverTemp = (RegsTable[Regs_TempEsrR_U] > LIMIT_TEMP_ESR) || 
                            (RegsTable[Regs_TempEsrR_F] > LIMIT_TEMP_ESR) || 
                            (RegsTable[Regs_TempEsrR_D] > LIMIT_TEMP_ESR);
    qapInd1.esrC_OverTemp = (RegsTable[Regs_TempEsrC_U] > LIMIT_TEMP_ESR);// || 
                            //(Regs_TempEsrC_F > LIMIT_TEMP_ESR) || 
                            //(Regs_TempEsrC_D > LIMIT_TEMP_ESR);
//        qapLeds.esrD_OverTemp = (Regs_TempEsrD_U > LIMIT_TEMP_ESR) || 
//                                (Regs_TempEsrD_F > LIMIT_TEMP_ESR) || 
//                                (Regs_TempEsrD_D > LIMIT_TEMP_ESR);
    /*fOverTemp = qapInd1.psuOverTemp ||
                qapInd1.esrA_OverTemp ||
                qapInd1.esrB_OverTemp ||
                qapInd1.esrC_OverTemp;*/


    qapInd1.dfc1OverTemp = sc16Status.dfc1OverTemp;
    qapInd1.dfc2OverTemp = sc16Status.dfc2OverTemp;
    qapInd1.arduOverTemp = sc16Status.arduOverTemp;
    qapInd1.dfc1CritTemp = sc16Status.dfc1CritTemp;
    qapInd1.dfc2CritTemp = sc16Status.dfc2CritTemp;
    qapInd1.arduCritTemp = sc16Status.arduCritTemp;

    leds.systemOk = (!leakage) && (!leakage2) && 
                    (!leds.psCbFail) &&
                    (leds.ok) &&
                    (!leds.fail) 
#ifndef PART_TEST 
                    && (!leds.sensorStackTemp) &&
                    (!leds.fanIndication) &&
                    /*(!fOverTemp) &&*/
                    (leds.heu)
#endif
                     ;

    qapInd2.systemOk = leds.systemOk;
    qapInd2.acOn = onState;
    qapInd1.acInFail = leds.fail;
    qapInd2.acIn = leds.ok;
    qapInd2.heuOk = extStatus.heuOk;
    qapInd1.psuFail = qapPsuFail;
    ind =              (RegsTable[Regs_FanEsrA1] < LIMIT_FAN) || 
                       (RegsTable[Regs_FanEsrA2] < LIMIT_FAN) ||  
                       (RegsTable[Regs_FanEsrA3] < LIMIT_FAN) || 
                       (RegsTable[Regs_FanEsrA4] < LIMIT_FAN);
    qapInd1.esrA_Fan = !ind; //fan OK LED
    ind =              (RegsTable[Regs_FanEsrB1] < LIMIT_FAN) || 
                       (RegsTable[Regs_FanEsrB2] < LIMIT_FAN) ||  
                       (RegsTable[Regs_FanEsrB3] < LIMIT_FAN) || 
                       (RegsTable[Regs_FanEsrB4] < LIMIT_FAN);
    qapInd1.esrB_Fan = !ind; //fan OK LED
    ind =              (RegsTable[Regs_FanEsrC1] < LIMIT_FAN);// || 
//                           (Regs_FanEsrC2 < LIMIT_FAN) ||  
//                           (Regs_FanEsrC3 < LIMIT_FAN) || 
//                           (Regs_FanEsrC4 < LIMIT_FAN);
    qapInd1.esrC_Fan = !ind; //fan OK LED

    qapLeds.arduOverTemp = qapInd1.arduOverTemp;
    qapLeds.psuOverTemp = qapInd1.psuOverTemp;
    qapLeds.dfc1OverTemp = qapInd1.dfc1OverTemp;
    qapLeds.dfc2OverTemp = qapInd1.dfc2OverTemp;
    qapLeds.esrA_OverTemp = qapInd1.esrA_OverTemp;
    qapLeds.esrB_OverTemp = qapInd1.esrB_OverTemp;
    qapLeds.esrC_OverTemp = qapInd1.esrC_OverTemp;
    qapLeds.acInFail = qapInd1.acInFail;
    qapLeds.psuFail = qapInd1.psuFail;
    qapLeds.arduCritTemp = qapInd1.arduCritTemp;
    qapLeds.dfc1CritTemp = qapInd1.dfc1CritTemp;
    qapLeds.dfc2CritTemp = qapInd1.dfc2CritTemp;
    qapLeds.esrA_Fan = qapInd1.esrA_Fan;
    qapLeds.esrB_Fan = qapInd1.esrB_Fan;
    qapLeds.esrC_Fan = qapInd1.esrC_Fan;


    qapLeds.acIn = qapInd2.acIn;
    qapLeds.acOn = qapInd2.acOn;
    qapLeds.arduOk = qapInd2.arduOk;
    extStatus.arduPowerOn = qapLeds.arduOk;
    qapLeds.dfc1Ok = qapInd2.dfc1Ok;
    extStatus.dfc1PowerOn = qapLeds.dfc1Ok;
    qapLeds.dfc2Ok = qapInd2.dfc2Ok;
    extStatus.dfc2PowerOn = qapLeds.dfc2Ok;
    qapLeds.systemOk = qapInd2.systemOk;
    qapLeds.heuOk = qapInd2.heuOk;

    if (switches.lampTest)
    {
        leds.fail = 1;
        leds.psCbFail = 1;
        leds.ok = 1;
        leds.sensorStackTemp = 1;
        leds.hvpFail = 1;
        leds.fanIndication = 1;
        leds.heu = 1;
        if (!switches.esrB) leds.esrB = 1;
        leds.systemOk = 1;
        if (!switches.hfMon) leds.hfMon = 1;
        if (!switches.esrA) leds.esrA = 1;
        if (!switches.abjb) leds.abjb = 1;
        leds.spare = 1;
        leds.mainOnOff = 1;
    }

    if (leds.val != RegsTable[Regs_Leds])
        fUpdateLeds = true;
    if (qapLeds.val != qapLedsLast)
        fUpdateQap = true;

    qapLedsLast = qapLeds.val;
    // update Qap registers
    RegsTable[Regs_QapInd1] = qapInd1.val;
    RegsTable[Regs_QapInd2] = qapInd2.val;
    RegsTable[Regs_ExtStatus] = extStatus.val;
    // check current limits
    for (i=0; i< sizeof(TableA); i++)
        if (RegsTable[TableA[i]] > TableALimit[i])
        {
            //if value pass limit shutdown the channel.
            RegsTable[Regs_CtrlSsr] &= ~TableAOut[i];
            UpdateSsr(RegsTable[Regs_CtrlSsr]);
            fUpdateSsr = true;
        }

    CheckDependencies(virtChange);
    
    
}

// Reset MCU
void ResetCpu(void)
{
    resetDly = 500;
}
void PreResetProc(void)
{
    if (ResetSysOffDly > 1) ResetSysOffDly--;
    else if (ResetSysOffDly == 1){
       ResetSysOffDly = 0;
       ResetSystem();
    }
}
void PreResetSystem(void)
{
    if ((RegsTable[Regs_RstSysOffDly] == 0)||(RegsTable[Regs_RstSysOffDly] == 0xFFFF))
        ResetSysOffDly = 59;
    else
        ResetSysOffDly = RegsTable[Regs_RstSysOffDly];
}

void ResetSystem(void)
{
    if (f9408){
        RegsTable[Regs_CtrlSsr] = 0;
        UpdateSsr(0);
        
    }
    else if(f9800){
        RegsTable[Regs_CtrlSsr_En] = 0;
        UpdateSsr_En(0);
    }
    
    if ((RegsTable[Regs_RstSysDly] == 0)||(RegsTable[Regs_RstSysDly] == 0xFFFF))
        ResetSysDly = 3000;
    else
        ResetSysDly = RegsTable[Regs_RstSysDly];
}



// Save IP Settings
void SaveIpSettings(void)
{
    FLASH_REC record;
    // read settings
    record.ip = IpOrder(RegsTable[Regs_IpAddH], RegsTable[Regs_IpAddL]);
    record.mask = IpOrder(RegsTable[Regs_MaskH], RegsTable[Regs_MaskL]);
    record.gateway = IpOrder(RegsTable[Regs_GatewayH], RegsTable[Regs_GatewayL]);
    record.cs = record.ip + record.mask + record.gateway;
    // write settings to FLASH
    OrFlashWritebBuf((uint32_t*)&record, SIZEOF_FLASH_REG_32);
}

uint32_t IpOrder(uint16_t high, uint16_t low)
{
    uint32_t address = (uint32_t)(((low >> 8) + (low & 0xFF)*256) << 16);
    address += ((high >> 8) + (high & 0xFF)*256);
    return address;
}

void IpRevOrder(uint32_t address, uint16_t *high, uint16_t *low)
{
    *low = ((address & 0xFF000000) >> 24) + ((address & 0x00FF0000) >> 8);
    *high = ((address & 0x0000FF00) >> 8) + ((address & 0x000000FF)*256);
            
}

void OrOpIpUpdateTable(FLASH_REC record)
{
    IpRevOrder(record.ip, &(RegsTable[Regs_IpAddH]), &(RegsTable[Regs_IpAddL]));
    IpRevOrder(record.mask, &(RegsTable[Regs_MaskH]), &(RegsTable[Regs_MaskL]));
    IpRevOrder(record.gateway, &(RegsTable[Regs_GatewayH]), &(RegsTable[Regs_GatewayL]));
}

uint16 Calc(uint16_t an, uint8_t param)
{
    //static uint16_t x1 = 1650, x2 = 1650, x3 = 1650, x4 = 1650, x5 = 1650, x6 = 1650;
    uint16_t val;
    switch(param){
        case a_0p18:
            val = (uint32_t)(an*11796 + 32768) >> 16; // an x 0.18 with rounding.
            break;
        case a_0p0198b_1650:
            if (an > 1650)
                val = (uint32_t)((an-1650)*1298 + 32768) >> 16; // (an - 1650)x0.0198 with rounding.
            else 
                val = 0;
            break;
        case a_0p08:
            val = (uint32_t)(an*5243 + 32768) >> 16; // an x 0.08 with rounding.
            break;
        case a_0p08c_2:
            val = (uint32_t)(an*2621 + 32768) >> 16; // an x 0.08/2 with rounding.
            break;
        case a_0p08c_3:
            val = (uint32_t)(an*1748 + 32768) >> 16; // an x 0.08/3 with rounding.
            break;
        case a_0p08b_1650:
            if (an > 1650)
                val = (uint32_t)((an-1650)*5243 + 32768) >> 16; // (an - 1698) x 0.08 with rounding.
            else
                val = 0;
            break;
        case a_0p08b_1650c_2:
            if (an > 1650)
                val = (uint32_t)((an-1650)*2621 + 32768) >> 16; // (an - 1650) x 0.08/2 with rounding.
            else
                val = 0;
            break;
        case a_0p08b_1650c_3:
            if (an > 1650)
                val = (uint32_t)((an-1650)*1748 + 32768) >> 16; // (an - 1650) x 0.08/3 with rounding.
            else
                val = 0;
            break;
        case a_0p08b_1698:
            if (an > 1698)
                val = (uint32_t)((an-1698)*5243 + 32768) >> 16; // (an - 1698) x 0.08 with rounding.
            else
                val = 0;
            break;
        case a_0p08b_1698c_3:
            if (an > 1698)
                val = (uint32_t)((an-1698)*1748 + 32768) >> 16; // (an - 1698) x 0.08/3 with rounding.
            else
                val = 0;
            break;
        case a_0p0723:
            val = (uint32_t)(an*4738 + 32768) >> 16; // an x 0.08 with rounding.
            break;
        case a_0p0322b_1650:
            if (an > 1650)
                val = (uint32_t)((an-1650)*2110 + 32768) >> 16; // (an - 1650)x0.0322 with rounding.
            else
                val = 0;
            break;
        case a_0p08b_X1c_3:
            if (onState || powerDownCtr)
                if (an > calibX.x[0])
                    val = (uint32_t)((an-calibX.x[0])*1748 + 32768) >> 16; // (an - x1) x 0.08/3 with rounding.
                else
                    val = 0;
            else{
                calibX.x[0] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x1: %u\r\n", x1);
            }
            break;
        case a_0p08b_X5c_3:
            if ((f9408 && (onState || powerDownCtr)) || (f9800 && RegsTable[Regs_CtrlSsr_En] != 0))
                if (an > calibX.x[4])
                    val = (uint32_t)((an-calibX.x[4])*1748 + 32768) >> 16; // (an - x5) x 0.08/3 with rounding.
                else
                    val = 0;
            else{
                calibX.x[4] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x5: %u, val: %u\r\n", x5, val);
            }
            break;
        case a_0p08b_X6c_2:
            if (onState || powerDownCtr)
                if (an > calibX.x[5])
                    val = (uint32_t)((an-calibX.x[5])*2621 + 32768) >> 16; // (an - x6) x 0.08/2 with rounding.
                else
                    val = 0;
            else{
                calibX.x[5] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x6: %u\r\n", x6);
            }
            break;
        case a_0p08b_X2:
            if (onState || powerDownCtr)
                if (an > calibX.x[1])
                    val = (uint32_t)((an-calibX.x[1])*5243 + 32768) >> 16; // (an - 1698) x 0.08 with rounding.
                else
                    val = 0;
            else{
                calibX.x[1] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x2: %u\r\n", x2);
            }
            break;
        case a_0p08b_X3:
            if ((f9408 && (onState || powerDownCtr)) || (f9800 && RegsTable[Regs_CtrlSsr_En] != 0))
                if (an > calibX.x[2])
                    val = (uint32_t)((an-calibX.x[2])*5243 + 32768) >> 16; // (an - 1698) x 0.08 with rounding.
                else
                    val = 0;
            else{
                calibX.x[2] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x3: %u, val: %u\r\n", x3, val);
            }
            break;
        case a_0p08b_X4:
            if (onState || powerDownCtr)
                if (an > calibX.x[3])
                    val = (uint32_t)((an-calibX.x[3])*5243 + 32768) >> 16; // (an - 1698) x 0.08 with rounding.
                else
                    val = 0;
            else{
                calibX.x[3] = an;
                val = 0;
                //SYS_CONSOLE_PRINT("x4: %u\r\n", x4);
            }
            break;
        default:
            val = 0;
            break;
    }
    return val;
}

void CheckDependencies(bool virtChange)
{
    Ssr lastState;
    
    if (ssrSdDly) return;
    
    
    
    ssr.val = RegsTable[Regs_CtrlSsr];
    lastState.val = ssr.val;
    
    if (virtChange) // once in 10s
    {
        ssr.val |= virtualSsr.val; 
    }
    
    
    ssr.ardu = ssr.ardu &&(!overUnderVolt._3pPlatform);
    ssr.dfc = ssr.dfc && (!overUnderVolt._3pPlatform);
    ssr.heu = ssr.heu && (!overUnderVolt._3pPlatform);
    ssr.cEsm = ssr.cEsm && (!overUnderVolt._1pPlatform);
    ssr.afe = ssr.afe && (!overUnderVolt.ups3);
    ssr.esrA = ssr.esrA && ((!overUnderVolt.ups1) || (!overUnderVolt.ups2) || (!overUnderVolt._1pPlatform) 
            || (!overUnderVolt._3pPlatform));
    ssr.esrB = ssr.esrB && ((!overUnderVolt.ups1) || (!overUnderVolt._1pPlatform));
    ssr.service = ssr.service && (!overUnderVolt._1pPlatform);
    ssr.ups2Occ = ssr.ups2Occ && (!overUnderVolt.ups2);
    ssr.occ1 = ssr.occ1 && (!overUnderVolt.ups4);
    ssr.occ2 = ssr.occ2 && (!overUnderVolt.ups4);
    ssr.occ3 = ssr.occ3 && (!overUnderVolt.ups4);
    ssr.hfMon = ssr.hfMon && ssr.esrA;
    
    virtualSsr.val = virtualSsr.val | (lastState.val & (~ssr.val)); //if SSR turned off turn on virtual indication
    
    if (lastState.val != ssr.val)
    {
        virtualSsr.val = (~ssr.val) & (virtualSsr.val); // virtual ssr stays on, only when ssr is off and virtual ssr is on
        RegsTable[Regs_CtrlSsr] = ssr.val;
        UpdateSsr(RegsTable[Regs_CtrlSsr]);
        fUpdateSsr = true;
    }
    
}

void ReadTem(void)
{
    uint32_t val = OrDsRead()/14400; // read in 0.25second to hours.
    RegsTable[Regs_Tem] = RegsTable[Regs_Tem_En] = val & 0xFFFF;
    RegsTable[Regs_TemH] = RegsTable[Regs_TemH_En] = val >> 16;
}

void WriteTem(void)
{
    uint32_t val = RegsTable[Regs_Tem] + RegsTable[Regs_TemH]*65536;
    SYS_CONSOLE_PRINT("value: %d, value big: %ld\r\n", val, val*14400);
    OrDsWrite(val * 14400);
}

void WriteTem_En(void)
{
    uint32_t val = RegsTable[Regs_Tem_En] + RegsTable[Regs_TemH_En]*65536;
    SYS_CONSOLE_PRINT("value: %d, value big: %ld\r\n", val, val*14400);
    OrDsWrite(val * 14400);
}


void FanProc(void)
{
    static uint8_t i = 0;
    uint16_t val;
        
    if (fForceFan){
        fanState = 0;
        i = 0;
        return;
    }
    if (f9408){
        switch(fanState){
            case 0:
                fanState++;
                i = 0;
                fanDly = 200;
                break;
            case 1:
                if (fanDly) break;
                if (!OrEmcReadRpm( FanOrder[i], &val)){
                    RegsTable[FanReg[i]] = val;
                    //sysErrorsEn.FanError = (val < LIMIT_FAN);
                    //RegsTable[Regs_SysErrors_En] = sysErrorsEn.val;
                }
                fanDly = 200;
                i++;
                if (i >= sizeof(FanOrder)) fanState = 0;
                break;
            
            default:
                break;
        }
    }
    else if (f9800){
        i = 17;
        switch(fanState)
        {
            case 0:
                fanState++;
                break;
            case 1:
                if (!OrEmcReadRpm( i, &val)){
                    RegsTable[Regs_FanPsu_En] = val;
                    sysErrorsEn.FanError = (val < LIMIT_FAN);
                    RegsTable[Regs_SysErrors_En] = sysErrorsEn.val;
                }
                fanDly = 1000;
                fanState++;
                break;
            case 2:
                if (fanDly) break;
                fanState = 1;
                break;
            default:
                break;
        }
    }
}
void ReadCalc(uint8_t reg, uint8_t an, uint8_t calc)
{
    uint16 adc;
    adc = OrAdcTo_mV(OrAdcRead(an));
    RegsTable[reg] = Calc(adc, calc);
}
void ReadProc(void)
{
    //uint16 an;
    if (fForceMux){
        readState = 0;
        return;
    }
    
    switch(readState)
    {
        case 0:
            readState = 1;
            break;
        case 1:
            UpdateMuxConfig2(0,0,3);
            readDly = 500;
            readState++;
            break;
        case 2: // AN P = 0, PROC P = 0 
            if (readDly) break;
            //ReadCalc(Regs_ArduL1A, AN1, a_0p08);
            //ReadCalc(Regs_EsmA, AN2, a_0p08c_2); //C_ECM
            //ReadCalc(Regs_3pL1V, AN3, a_0p18);
            ReadCalc(Regs_IsometerDirect, AN5, a_0p0723);
            //ReadCalc(Regs_HeuV, AN7, a_0p0198b_1650);
            //SYS_CONSOLE_PRINT("an, calc: %u, %u\r\n", an, RegsTable[Regs_3pL1V_En]);
            leakage = (RegsTable[Regs_IsometerDirect] < LIMIT_LEAK);
            leakageCritic = (RegsTable[Regs_IsometerDirect] < LIMIT_LEAK_CRT);
            if (leakageCritic)
            {
                RegsTable[Regs_CtrlSsr] = 0;
                UpdateSsr(0);
            }
            if (isoState){
                readDly = 100;
                readState = 2;
            }
            else{
                UpdateMuxConfig2(1,0,3);
                readDly = 500;
                readState++; 
            }
            break;          
        case 3: // AN P = 1, PROC P = 0 
            if (readDly) break;
            ReadCalc(Regs_UpsEsrL_A, AN1, a_0p08c_3);
            ReadCalc(Regs_Occ1A, AN2, a_0p08c_2);
            //ReadCalc(Regs_3pL2V, AN3, a_0p18);
            ReadCalc(Regs_TempEsrL_U, AN5, a_0p0322b_1650);
            ReadCalc(Regs_TempEsrC_F, AN6, a_0p0322b_1650);
            ReadCalc(Regs_EsrRV, AN7, a_0p0198b_1650);
            UpdateMuxConfig2(2,0,3);
            readDly = 500;
            readState++;
            break;
        case 4: // AN P = 2, PROC P = 0 
            if (readDly) break;
            //ReadCalc(Regs_Ups2EsrA_A, AN2, a_0p08);             
            //ReadCalc(Regs_3pL3V, AN3, a_0p18);
            ReadCalc(Regs_Occ3A, AN4, a_0p08c_2);
            ReadCalc(Regs_TempEsrL_F, AN5, a_0p0322b_1650);
            ReadCalc(Regs_TempEsrC_D, AN6, a_0p0322b_1650);
            ReadCalc(Regs_CesmV, AN7, a_0p0198b_1650);
            UpdateMuxConfig2(3,0,3);
            readDly = 500;
            readState++;
            break;
        case 5: // AN P = 3, PROC P = 0 
            if (readDly) break;
            //ReadCalc(Regs_EsrA6KwA, AN1, a_0p08);
            ReadCalc(Regs_UpsV, AN3, a_0p18);
            //ReadCalc(Regs_Dfc12L1A, AN4, a_0p08c_3);
            ReadCalc(Regs_TempEsrL_D, AN5, a_0p0322b_1650);
            ReadCalc(Regs_TempEsrD_U, AN6, a_0p0322b_1650);
            ReadCalc(Regs_EsrLV, AN7, a_0p0198b_1650);
            UpdateMuxConfig2(4,0,3);
            readDly = 500;
            readState++;
            break;
        case 6: // AN P = 4, PROC P = 0 
            if (readDly) break;
            //ReadCalc(Regs_Ups2OccA, AN2, a_0p08c_2);
            ReadCalc(Regs_DirectV, AN3, a_0p18);
            ReadCalc(Regs_Occ2A, AN4, a_0p08c_2); 
            ReadCalc(Regs_TempEsrR_U, AN5, a_0p0322b_1650);
            ReadCalc(Regs_TempEsrD_F, AN6, a_0p0322b_1650);
            UpdateMuxConfig2(5,0,3);
            readDly = 500;
            readState++;
            break;
        case 7: // AN P = 5, PROC P = 0 
            if (readDly) break;
            ReadCalc(Regs_UpsEsrR_A, AN2, a_0p08);
            //ReadCalc(Regs_Ups2V, AN3, a_0p18);
            ReadCalc(Regs_TempEsrR_D, AN5, a_0p0322b_1650);
            ReadCalc(Regs_TempEsrD_D, AN6, a_0p0322b_1650);
            UpdateMuxConfig2(6,0,3);
            readDly = 500;
            readState++;
            break;
        case 8: // AN P = 6, PROC P = 0 
            if (readDly) break;
            ReadCalc(Regs_DirectEsrL_A, AN1, a_0p08);
            //ReadCalc(Regs_Ups3V, AN3, a_0p18);
            ReadCalc(Regs_ServiceA, AN4, a_0p08c_2);
            ReadCalc(Regs_TempEsrR_F, AN5, a_0p0322b_1650);
            UpdateMuxConfig2(7,0,3);
            readDly = 500;
            readState++;
            break;
        case 9: // AN P = 7, PROC P = 0 
            if (readDly) break;
            //ReadCalc(Regs_Ups4V, AN3, a_0p18);
            //ReadCalc(Regs_AfeA, AN2, a_0p08);
            ReadCalc(Regs_TempEsrC_U, AN5, a_0p0322b_1650);
            UpdateMuxConfig2(0,2,3);
            readDly = 100;
            readState++;
            break;
        case 10: // AN P = 0, PROC P = 2 
            if (readDly) break;
            ReadCalc(Regs_EsmA, AN2, a_0p08b_X6c_2); //C_ECM
            UpdateMuxConfig2(3,2,3);
            readDly = 100;
            readState = 12;
            break;
        case 11: // AN P = 0, PROC P = 8 
//            if (readDly) break;
//            ReadCalc(Regs_Isometer3p, AN4, a_0p0723);
//            leakage2 = (RegsTable[Regs_Isometer3p] < LIMIT_LEAK);
//            leakageCritic2 = (RegsTable[Regs_Isometer3p] < LIMIT_LEAK_CRT);
//            if (leakageCritic2)
//            {
//                RegsTable[Regs_CtrlSsr] = 0;
//                UpdateSsr(0);
//            }
//            if (isoState2){
//                readDly = 100;
//                readState = 11;
//            }
//            else{
//                UpdateMuxConfig2(3,2,3);
//                readDly = 100;
//                readState++; 
//            }
            break;
        case 12: // AN P = 3, PROC P = 2 
            if (readDly) break;
            //ReadCalc(Regs_AbjbA, AN2, a_0p08b_1698c_3);
            ReadCalc(Regs_AbjbA, AN2, a_0p08b_X5c_3);
            UpdateMuxConfig2(5,1,3);
            readDly = 100;
            readState = 14;
            break;
        case 13: // AN P = 4, PROC P = 1 
//            if (readDly) break;
//            ReadCalc(Regs_HeuA, AN1, a_0p08b_X3);
//            UpdateMuxConfig2(5,1,3);
//            readDly = 100;
//            readState++;
            break;
        case 14: // AN P = 5, PROC P = 1 
            if (readDly) break;
            ReadCalc(Regs_EsrLPs2A, AN1, a_0p08b_X4);
            UpdateMuxConfig2(6,2,3);
            readDly = 100;
            readState++;
            break;
        case 15: // AN P = 6, PROC P = 2 
            if (readDly) break;
            ReadCalc(Regs_EsrR28A, AN2, a_0p08b_X2);
            UpdateMuxConfig2(7,1,3);
            readDly = 100;
            readState++;
            break;
        case 16: // AN P = 7, PROC P = 1 
            if (readDly) break;
            ReadCalc(Regs_DfRfuA, AN1, a_0p08b_X1c_3);
            UpdateMuxConfig2(3,0,1);
            readDly = 50;
            capIn = 0;
            readState = 20;
            break;
        case 17: // AN P = 0, PROC P = 0, PROC F = 1
//            if (readDly) break;
//            RegsTable[Regs_3pL1F] = (capIn == 2)? freq: 0;
//            UpdateMuxConfig2(1,0,1);
//            readDly = 50;
//            capIn = 0;
//            readState++;
            break; 
        case 18: // AN P = 1, PROC P = 0, PROC F = 1 
//            if (readDly) break;
//            RegsTable[Regs_3pL2F] = (capIn == 2)? freq: 0;
//            UpdateMuxConfig2(2,0,1);
//            readDly = 50;
//            capIn = 0;
//            readState++;
            break;
        case 19: // AN P = 2, PROC P = 0, PROC F = 1 
//            if (readDly) break;
//            RegsTable[Regs_3pL3F] = (capIn == 2)? freq: 0;
//            UpdateMuxConfig2(3,0,1);
//            readDly = 50;
//            capIn = 0;
//            readState++;
            break;
        case 20: // AN P = 3, PROC P = 0, PROC F = 1 
            if (readDly) break;
            RegsTable[Regs_UpsF] = (capIn == 2)? freq: 0;
            UpdateMuxConfig2(4,0,1);
            readDly = 50;
            capIn = 0;
            readState++;
            break;    
        case 21: // AN P = 4, PROC P = 0, PROC F = 1 
            if (readDly) break;
            RegsTable[Regs_DirectF] = (capIn == 2)? freq: 0;
            //UpdateMuxConfig2(5,0,1);
            //readDly = 50;
            //capIn = 0;
            readState = 0;
            break;    
//        case 22: // AN P = 5, PROC P = 0, PROC F = 1 
//            if (readDly) break;
//            RegsTable[Regs_Ups2F] = (capIn == 2)? freq: 0;
//            UpdateMuxConfig2(6,0,1);
//            readDly = 50;
//            capIn = 0;
//            readState++;
//            break;  
//        case 23: // AN P = 6, PROC P = 0, PROC F = 1 
//            if (readDly) break;
//            RegsTable[Regs_Ups3F] = (capIn == 2)? freq: 0;
//            UpdateMuxConfig2(7,0,1);
//            readDly = 50;
//            capIn = 0;
//            readState++;
//            break;  
//        case 24: // AN P = 7, PROC P = 0, PROC F = 1 
//            if (readDly) break;
//            RegsTable[Regs_Ups4F] = (capIn == 2)? freq: 0;
//            readState = 0;
//            break;  
        default:
            break;
    }
    
}