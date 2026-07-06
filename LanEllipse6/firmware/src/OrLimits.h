/* 
 * File:   OrLimits.h
 * Author: Michael
 *
 * Created on September 26, 2024, 4:18 PM
 */

#ifndef ORLIMITS_H
#define	ORLIMITS_H

#ifdef	__cplusplus
extern "C" {
#endif
#define LIMIT_208V_H    229//225
#define LIMIT_208V_L    187//191
#define LIMIT_115V_H    127//124
#define LIMIT_115V_L    103//106
#define LIMIT_LIVE_PH   10 //V limit for live phase   
#define LIMIT_60HZ_H    62
#define LIMIT_60HZ_L    58
#define LIMIT_28V_H     31
#define LIMIT_28V_L     25
#define LIMIT_LEAK      46//kOhm
#define LIMIT_LEAK_CRT  23//kOhm
#define LIMIT_TEMP_PSU  70//Celsious 
#define LIMIT_TEMP_PSU_CRT  80//Celsious
#define LIMIT_TEMP_ESR  50//Celsious 
//#define LIMIT_TEMP_ESR_CRIT  60   
#define LIMIT_FAN       600//RPM
#define LIMIT_DFC1      4//Amp
#define LIMIT_DFC2      4//Amp
#define LIMIT_DFC3      4//Amp
#define LIMIT_DFC4      4//Amp
#define LIMIT_ARDU_EN   44//Amp
#define LIMIT_SPARE     4//Amp
#define LIMIT_HEU       32//Amp
#define LIMIT_SERVICE   7//Amp
#define LIMIT_ABJB      2//Amp
//9408
#define LIMIT_ARDU      17//13//Amp
#define LIMIT_DFC       3//2//Amp
#define LIMIT_ESR_B28V  74//Amp
#define LIMIT_ESR_B1P   36//Amp
#define LIMIT_HFMON     5//3//Amp
#define LIMIT_CESM      5//Amp
#define LIMIT_ESRAUPS2  13//Amp
#define LIMIT_UPS2OOC   5//Amp
#define LIMIT_ESRAUPS1  8//Amp
#define LIMIT_ESRA28V   31//Amp
#define LIMIT_AFE       18//Amp
#define LIMIT_OCC1      6//Amp
#define LIMIT_OCC2      6//Amp
#define LIMIT_OCC3      6//Amp
#define LIMIT_ESRA1P    16//Amp
    
    
    
    


#ifdef	__cplusplus
}
#endif

#endif	/* ORLIMITS_H */

