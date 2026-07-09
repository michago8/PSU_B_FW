/* 
 * File:   OrUtils.h
 * Author: Michael
 *
 * Created on December 20, 2022, 10:37 AM
 */

#ifndef ORUTILS_H
#define	ORUTILS_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stdint.h>
#include <stdbool.h>

#define SIZE_OF_TABLE 256 
    
    enum{
        Regs_CtrlSsr,
        Regs_Switches,
        Regs_Leds,
        Regs_MainAndCB,
        Regs_3pL1V_NA,
        Regs_3pL1F_NA,
        Regs_3pL2V_NA,
        Regs_3pL2F_NA,
        Regs_3pL3V_NA,
        Regs_3pL3F_NA,
        Regs_3pPhase_NA,
        Regs_UpsV,
        Regs_UpsF,
        Regs_DirectV,
        Regs_DirectF,
        Regs_Ups2V_NA,
        Regs_Ups2F_NA,             //0x10
        Regs_Ups3V_NA,
        Regs_Ups3F_NA,
        Regs_Ups4V_NA,
        Regs_Ups4F_NA,
        Regs_HeuV_NA,
        Regs_EsrRV,
        Regs_EsrLV,
        Regs_CesmV,
        Regs_UpsEsrR_A,
        Regs_Ups2EsrA_A_NA,
        Regs_Ups2OccA_NA,
        Regs_AfeA_NA,
        Regs_Occ1A,
        Regs_Occ2A,
        Regs_DirectEsrL_A,
        Regs_EsrLPs2A,          //0x20
        Regs_ServiceA,
        Regs_EsmA,
        Regs_AbjbA,
        Regs_Occ3A,
        Regs_EsrA6KwA_NA,
        Regs_ArduL1A_NA,
        Regs_Space27_NA,
        Regs_Space28_NA,
        Regs_DfRfuA,
        Regs_Dfc12L1A_NA,
        Regs_Space2B_NA,
        Regs_Space2C_NA,
        Regs_EsrR28A,
        Regs_HeuA_NA,
        Regs_UpsEsrL_A,
        Regs_IsometerDirect,          //0x30
        Regs_IsoDirectBits,
        Regs_Isometer3p_NA,
        Regs_IsoBits3p_NA,
        Regs_TempEsrL_U,
        Regs_TempEsrL_F_NA,
        Regs_TempEsrL_D,
        Regs_TempEsrR_U,
        Regs_TempEsrR_F_NA,
        Regs_TempEsrR_D,
        Regs_TempEsrC_U_NA,
        Regs_TempEsrC_F_NA,
        Regs_TempEsrC_D_NA,
        Regs_TempEsrD_U_NA,
        Regs_TempEsrD_F_NA,
        Regs_TempEsrD_D_NA,
        Regs_FanEsrR1,
        Regs_FanEsrR2,
        Regs_FanEsrR3,
        Regs_FanEsrR4,
        Regs_FanEsrL1,
        Regs_FanEsrL2,
        Regs_FanEsrL3,
        Regs_FanEsrL4,
        Regs_FanEsrC1_NA,
        Regs_FanEsrC2_NA,
        Regs_FanEsrC3_NA,
        Regs_FanEsrC4_NA,
        Regs_FanEsrD1_NA,
        Regs_FanEsrD2_NA,
        Regs_FanEsrD3_NA,
        Regs_FanEsrD4_NA,
        Regs_TempPsuPcb = 0x50,
        Regs_FanPsu,
        Regs_TempPsuDrawer = 0x52,
        Regs_ExtStatus,
        Regs_EraseClock,
        Regs_EraseStatus,
        Regs_QapInd1,
        Regs_QapInd2,
        Regs_OverUnderV,
        Regs_3PhaseStatus,
        Regs_Tem = 0x5A,
        Regs_TemH = 0x5B,
        Regs_BattleT1,
        Regs_IpAddH = 0x61,
        Regs_IpAddL,
        Regs_MaskH,
        Regs_MaskL,
        Regs_GatewayH,
        Regs_GatewayL,
        Regs_SaveNetConf,
        Regs_ResetCpu,
        Regs_VerH,
        Regs_VerM,
        Regs_VerL,
        Regs_ResetSystem,
        Regs_BattleShort,
        Regs_PowerDown,
        Regs_EepromPsuConf = 0x70,
        Regs_SdDly = 0x78,
        Regs_PuSeqDly,
        Regs_RstSysDly,
        Regs_RstSysOffDly,
        Regs_RstInd,
        Regs_RstState,
        Regs_SaveToEeprom = 0x7F,
        Regs_CtrlSsr_En = 0x80,
        Regs_Switches_En,
        Regs_Leds_En,
        Regs_MainAndCB_En,
        Regs_3pL1V_En,
        Regs_3pL1F_En,
        Regs_3pL2V_En,
        Regs_3pL2F_En,
        Regs_3pL3V_En,
        Regs_3pL3F_En,
        Regs_3pPhase_En,
        Regs_HeuV_En,
        Regs_PsV_En,
        Regs_ArduL1A_En,
        Regs_ArduL2A_En,
        Regs_ArduL3A_En,
        Regs_Dfc1L1A_En,
        Regs_Dfc1L2A_En,
        Regs_Dfc1L3A_En,
        Regs_Dfc2L1A_En,
        Regs_Dfc2L2A_En,
        Regs_Dfc2L3A_En,
        Regs_Dfc3L1A_En,
        Regs_Dfc3L2A_En,
        Regs_Dfc3L3A_En,
        Regs_Dfc4L1A_En,
        Regs_Dfc4L2A_En,
        Regs_Dfc4L3A_En,
        Regs_AbjbA_En,
        Regs_HeuA_En,
        Regs_Isometer_En,
        Regs_IsoBits_En,
        Regs_TempPsuPcb_En = 0xA0,
        Regs_TempPsuDrawer_En,
        Regs_FanPsu_En,
        Regs_Tem_En,
        Regs_TemH_En,
        Regs_SysErrors_En,
        Regs_3PhaseStatus_En,
        Regs_MaintForce = 0xB0,
        Regs_MaintConfig,
        Regs_MaintAns,
        Regs_MaintFanCh  = 0xB9,
        Regs_MaintFanPwm,
        Regs_MaintFanRpm,
        Regs_MaintFreq,
    };
    enum{
        I2C1_74, I2C1_75, I2C1_76, I2C1_77,
        I2C2_74, I2C2_75, I2C2_76, I2C2_77,
        I2C3_74,
    };
    
#define CONV_PORT_TABLE {\
        {1, 0x74}, {1, 0x75}, {1, 0x76}, {1, 0x77}, /* I2C1 */ \
        {2, 0x74}, {2, 0x75}, {2, 0x76}, {2, 0x77}, /* I2C2 */ \
        {3, 0x74}, /* I2C3 */ \
    }
    
#define CONV_FAN_TABLE {\
        {1, 0x2E}, {2, 0x2E}, {3, 0x2E}, {4, 0x2E}, /* U26 */ \
        {1, 0x2F}, {2, 0x2F}, {3, 0x2F}, {4, 0x2F}, /* U30 */ \
        {1, 0x2C}, {2, 0x2C}, {3, 0x2C}, {4, 0x2C}, /* U34 */ \
        {1, 0x2D}, {2, 0x2D}, {3, 0x2D}, {4, 0x2D}, {5, 0x2D},/* U38 */ \
    }

    typedef struct{
        uint8_t ch;
        uint8_t address;
    }ConvPort;
    
    typedef union{
        struct{
            uint16_t P0:1;
            uint16_t P1:1;
            uint16_t P2:1;
            uint16_t P3:1;
            uint16_t P4:1;
            uint16_t P5:1;
            uint16_t P6:1;
            uint16_t P7:1;
            uint16_t P10:1;
            uint16_t P11:1;
            uint16_t P12:1;
            uint16_t P13:1;
            uint16_t P14:1;
            uint16_t P15:1;
            uint16_t P16:1;
            uint16_t P17:1;
        };
        uint16_t val;
    }I2cStruct;

uint32_t swap_uint32( uint32_t val );
bool OrUtilsInitEnd(void);
void OrUtilsSetInitEnd(void);
uint8_t OrGetByte0(uint16_t val);
uint8_t OrGetByte1(uint16_t val);
uint16_t OrGetWord(uint8_t byte0, uint8_t byte1);
void OrByteArrayToHexString(unsigned char* byteArray, int byteArraySize, char* hexString);

extern uint16_t RegsTable[SIZE_OF_TABLE];

#ifdef	__cplusplus
}
#endif

#endif	/* ORUTILS_H */

