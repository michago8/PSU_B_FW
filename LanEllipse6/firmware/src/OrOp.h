/* 
 * File:   OrOp.h
 * Author: Michael
 *
 * Created on February 25, 2024, 5:41 PM
 */

#ifndef OROP_H
#define	OROP_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "OrFlash.h"
#include "OrUtils.h"
#include "OrLimits.h"
 
#define SSR_SD_DLY 10000 // 10S     
    
#define TABLE_A     {/*Regs_ArduL1A, Regs_Dfc12L1A, Regs_HeuA,*/\
                    Regs_EsrLPs2A/*?ESR B - 28V*/, Regs_DirectEsrL_A,/*?ESR B -1P*/Regs_DfRfuA,\
                    Regs_EsmA, /*Regs_Ups2EsrA_A, Regs_Ups2OccA,*/\
                    Regs_UpsEsrR_A, Regs_EsrR28A, /*Regs_AfeA,*/\
                    Regs_Occ1A, Regs_Occ2A, Regs_Occ3A,\
                    Regs_ServiceA, /*Regs_EsrA6KwA*//*?ESR A -1P*/}
#define TABLE_A_LIMIT {LIMIT_ARDU, LIMIT_DFC, LIMIT_HEU,\
                    LIMIT_ESR_B28V, LIMIT_ESR_B1P, LIMIT_HFMON,\
                    LIMIT_CESM, LIMIT_ESRAUPS2, LIMIT_UPS2OOC,\
                    LIMIT_ESRAUPS1, LIMIT_ESRA28V, LIMIT_AFE,\
                    LIMIT_OCC1, LIMIT_OCC2, LIMIT_OCC3,\
                    LIMIT_SERVICE, LIMIT_ESRA1P}
#define TABLE_A_OUT { E_ARDU, E_DFC, E_HEU,\
                    E_ESRB, E_ESRB, E_HFMON,\
                    E_CESM, E_ESRA, E_UPS2OOC,\
                    E_ESRA, E_ESRA, E_AFE,\
                    E_OCC1, E_OCC2, E_OCC3,\
                    E_SERVICE, E_ESRA}
    
#define TABLE_A_EN {Regs_ArduL1A_En, Regs_ArduL2A_En, Regs_ArduL3A_En,\
                    Regs_Dfc1L1A_En, Regs_Dfc1L2A_En, Regs_Dfc1L3A_En,\
                    Regs_Dfc2L1A_En, Regs_Dfc2L2A_En, Regs_Dfc2L3A_En,\
                    Regs_Dfc3L1A_En, Regs_Dfc3L2A_En, Regs_Dfc3L3A_En,\
                    Regs_Dfc4L1A_En, Regs_Dfc4L2A_En, Regs_Dfc4L3A_En,\
                    Regs_AbjbA_En, Regs_HeuA_En}
#define TABLE_A_LIMIT_EN {LIMIT_ARDU_EN, LIMIT_ARDU_EN, LIMIT_ARDU_EN,\
                    LIMIT_DFC1, LIMIT_DFC1, LIMIT_DFC1,\
                    LIMIT_DFC2, LIMIT_DFC2, LIMIT_DFC2,\
                    LIMIT_DFC3, LIMIT_DFC3, LIMIT_DFC3,\
                    LIMIT_DFC4, LIMIT_DFC4, LIMIT_DFC4,\
                    LIMIT_ABJB, LIMIT_HEU}
#define TABLE_A_OUT_EN { E_ARDU_EN, E_ARDU_EN, E_ARDU_EN,\
                    E_DFC1_EN, E_DFC1_EN, E_DFC1_EN,\
                    E_DFC2_EN, E_DFC2_EN, E_DFC2_EN,\
                    E_DFC3_EN, E_DFC3_EN, E_DFC3_EN,\
                    E_DFC4_EN, E_DFC4_EN, E_DFC4_EN,\
                    E_ABJB_EN, E_HEU_EN}
    
    enum{
        E_ARDU,
        E_DFC,
        E_HEU       = 4,
        E_CESM      = 8,
        E_AFE       = 0x10,
        E_ESRA      = 0x20,
        E_ESRB      = 0x40,
        E_SERVICE   = 0x80,
        E_UPS2OOC   = 0x100,
        E_OCC1      = 0x200,
        E_OCC2      = 0x400,
        E_OCC3      = 0x800,
        E_HFMON     = 0x1000,
    };
    
    enum{
        E_ARDU_EN,
        E_DFC1_EN,
        E_DFC2_EN = 4,
        E_DFC3_EN = 8,
        E_DFC4_EN = 0x10,
        E_HEU_EN = 0x20,
        E_ABJB_EN = 0x40,
        E_SERVICE_EN = 0x80,
        E_SPARE_EN = 0x100,
    };
    
    typedef struct{
        uint8_t limitH;
        uint8_t limitL;
    }Limits;
    
    typedef union{
        struct{
            uint16_t ardu:1;
            uint16_t dfc1:1;
            uint16_t dfc2:1;
            uint16_t dfc3:1;
            uint16_t dfc4:1;
            uint16_t heu:1;
            uint16_t abjb:1;
            uint16_t service:1;
            uint16_t spare:1;
            uint16_t lampTest:1;
            uint16_t spare2:6;
        };
        uint16_t val;
    }Ssr_En, Switches_En;
    
    typedef union{
        struct{
            uint16_t ardu:1;
            uint16_t dfc:1;
            uint16_t heu:1;
            uint16_t cEsm:1;
            uint16_t afe:1;
            uint16_t esrA:1;
            uint16_t esrB:1;
            uint16_t service:1;
            uint16_t ups2Occ:1;
            uint16_t occ1:1;
            uint16_t occ2:1;
            uint16_t occ3:1;
            uint16_t hfMon:1;
            uint16_t lampTest:1;
            uint16_t spare:3;
        };
        uint16_t val;
    }Ssr;
    
    typedef union{
        struct{
            uint16_t ardu:1;
            uint16_t dfc:1;
            uint16_t heu:1;
            uint16_t cEsm:1;
            uint16_t afe:1;
            uint16_t esrA:1;
            uint16_t esrB:1;
            uint16_t service:1;
            uint16_t ups2Occ:1;
            uint16_t occ1:1;
            uint16_t occ2:1;
            uint16_t occ3:1;
            uint16_t hfMon:1;
            uint16_t abjb:1;
            uint16_t gpu:1;
            uint16_t lampTest:1;
        };
        uint16_t val;
    }Switches;
    
    typedef union{
        struct{
            uint16_t main:1;
            uint16_t _3pPlatform:1;
            uint16_t _1pPlatform:1;
            uint16_t ups1:1;
            uint16_t ups2:1;
            uint16_t ups3:1;
            uint16_t ups4:1;
            uint16_t spare:9;
        };
        uint16_t val;
    }MainAndCb;
    
    typedef union{
        struct{
            uint16_t main:1;
            uint16_t _3pPlatform:1;
            uint16_t spare:14;
        };
        uint16_t val;
    }MainAndCb_En;
    
    typedef union{
        struct{
            uint16_t fail:1;
            uint16_t ok:1;
            uint16_t hvpFail:1;
            uint16_t systemOk:1;
            uint16_t psCbFail:1;
            uint16_t sensorStackTemp:1;
            uint16_t fanIndication:1;
            uint16_t heu:1;
            uint16_t esrB:1;
            uint16_t hfMon:1;
            uint16_t esrA:1;
            uint16_t abjb:1;
            uint16_t spare:1;
            uint16_t mainOnOff:1;
            uint16_t spare2:2;
        };
        uint16_t val;
    }Leds;
    
    typedef union{
        struct{
            uint16_t fail:1;
            uint16_t ok:1;
            uint16_t hvpFail:1;
            uint16_t leakage:1;
            uint16_t mainOnOff:1;
            uint16_t abjb:1;        // this only for LED not for update of register
            uint16_t spare:11;
        };
        uint16_t val;
    }Leds_En;
    
    typedef union{
        struct{
            uint16_t _3pPlatform:1;
            uint16_t _1pPlatform:1;
            uint16_t ups1:1;
            uint16_t ups2:1;
            uint16_t ups3:1;
            uint16_t ups4:1;
            uint16_t spare:10;
        };
        uint16_t val;
    }OverUnderVolt;
    
    typedef union{
        struct{
            uint16_t _3pPlatformOverV:1;
            uint16_t OverTemp:1;
            uint16_t CriticalTemp:1;
            uint16_t FanError:1;
            uint16_t spare:12;
        };
        uint16_t val;
    }SysErrors_En;
    
    
    
    typedef union{
        struct{
            uint16_t _3p1:1;
            uint16_t _3p2:1;
            uint16_t _3p3:1;
            uint16_t spare:13;
        };
        uint16_t val;
    }PhaseStatus, PhaseStatus_En;
    
    typedef union{
        struct{
            uint16_t SelAnP0:1;
            uint16_t SelAnP1:1;
            uint16_t SelAnP2:1;
            uint16_t SelProcP0:1;
            uint16_t SelProcP1:1;
            uint16_t SelProcP2:1;
            uint16_t SelProcP3:1;
            uint16_t SelProcF0:1;
            uint16_t SelProcF1:1;
            uint16_t spare:7;
        };
        struct{
            uint16_t SelAnP:3;
            uint16_t SelProcP:4;
            uint16_t SelProcF:2;
            uint16_t spare2:7;
        };
        uint16_t val;
    }MuxConfig;
    
    typedef union{
        struct{
            uint16_t na1:9;
            uint16_t pqapMainOnOff:1;
            uint16_t pqapBattle:1;
            uint16_t pqapErase:1;
            uint16_t na2:1;
            uint16_t pcmMainOnOff:1;
            uint16_t pcmInd:1;
            uint16_t spare:1;
        };
        uint16_t val;
    }ExtStatus;
    
    typedef union{
        struct{
            uint16_t arduOverTemp:1;
            uint16_t heuOverTemp:1;
            uint16_t psuOverTemp:1;
            uint16_t dfc1OverTemp:1;
            uint16_t dfc2OverTemp:1;
            uint16_t esrC_OverTemp:1;
            uint16_t esrB_OverTemp:1;
            uint16_t esrA_OverTemp:1;
            uint16_t acInFail:1;
            uint16_t psuFail:1;
            uint16_t arduCritTemp:1;
            uint16_t esrC_Fan:1;
            uint16_t esrB_Fan:1;
            uint16_t esrA_Fan:1;
            uint16_t dfc1CritTemp:1;
            uint16_t dfc2CritTemp:1;
        };
        uint16_t val;
    }QapInd1;
    
    typedef union{
        struct{
            uint16_t acIn:1;
            uint16_t acOn:1;
            uint16_t arduOk:1;
            uint16_t heuOk:1;
            uint16_t systemOk:1;
            uint16_t dfc1Ok:1;
            uint16_t dfc2Ok:1;
            uint16_t spare:9;
        };
        uint16_t val;
    }QapInd2;
    
    typedef union{
        struct{
            uint32_t acInFail:1;
            uint32_t psuFail:1;
            uint32_t psuOverTemp:1;
            uint32_t esrA_OverTemp:1;
            uint32_t esrB_OverTemp:1;
            uint32_t esrC_OverTemp:1;
            uint32_t arduOk:1;
            uint32_t heuOk:1;
            uint32_t dfc1OverTemp:1;
            uint32_t dfc2OverTemp:1;
            uint32_t arduOverTemp:1;
            uint32_t arduCritTemp:1;
            uint32_t acOn:1;
            uint32_t systemOk:1;
            uint32_t acIn:1;
            uint32_t esrA_Fan:1;
            uint32_t esrB_Fan:1;
            uint32_t esrC_Fan:1;
            uint32_t dfc1CritTemp:1;
            uint32_t dfc2CritTemp:1;
            uint32_t dfc1Ok:1;
            uint32_t dfc2Ok:1;
            uint32_t spare:10;
        };
        struct{
            uint32_t qap1L:16;
            uint32_t qap1H:6;
            uint32_t spare2:10;
        };
        struct{
            uint32_t qap2L:10;
            uint32_t qap2H:12;
            uint32_t spare3:10;
        };
        uint32_t val;
    }QapLeds;
    
    typedef struct{
        uint16_t x[6];
        uint16_t cs;
    }CalibX;
    
    
    void OrOpInit(void);
    void OrOpProc(void);
    void OrOpPeriodic(void);
    void OrOpCmds(uint16_t address);
    void OrOpIpUpdateTable(FLASH_REC record);
    bool OrOpIs9408(void);
    void OrOpSetI2cFail(bool flag);
    void OrOpSetCommRst(void);
    bool OrOpIsRst(void);

    //extern Switches switches;
    extern MainAndCb mainAndCb;
    extern ConvPort convPortTable[];
    extern Leds leds;
    extern CalibX calibX;
#ifdef	__cplusplus
}
#endif

#endif	/* OROP_H */

