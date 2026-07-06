/* 
 * File:   OrConfig.h
 * Author: Michael
 *
 * Created on December 12, 2022, 9:47 PM
 * 1.1.0 - Add EEPROM handling
 * 1.1.22 - fix ADC reads of 9800, change 0.169 to 0.18 in calculation of voltage
 * 1.1.23 - Add Erase, Battle Short functionality, fix some indication and Lamp Test operation. 
 * 1.1.24 - logic fix in the overUnderVolt update.
 * 1.1.25 - fix systemOK and psCbFail.
 * 1.1.26 - fix error indications.
 * 1.1.27 - LED fixes(fans) and Frequency measure fix.
 * 1.1.28 - Invert the 1-16 Fan's PWM
 * 1.1.29 - fix confusion between 2 registers: "Regs_3pPhase" and "Regs_3PhaseStatus".
 * 1.1.30 - invert "Regs_3pPhase".
 * 1.1.31 - change Isometer1/3 test SSRs. position (swap)
 * 1.1.32 - fix Isometer for 9800
 * 1.1.33 - deactivate define PART_TEST
 * 1.1.34 - add write clock
 * 1.1.35 - add fix for new lamp test in En version
 * 1.1.36 - fix version number.
 * 1.1.37 - bring back the Reg_3pPhase to non invert mode.
 * 1.1.38 - fix a bug in the Isometer for the 9800
 * 1.2.0 - add the changes with the power down and register changes.
 * 1.2.1 - change table multiply 0.556 to 0.322
 * 1.2.2 - change tachometer range
 * 1.2.3 - fix in the Tachometers read
 * 1.2.4 - add I2C fail handling for GPIOs
 * 1.2.5 - change the RS422 to RS485 cause of design issue
 * 1.2.6 - add updates to the external status, change the calculation for C_ESM current
 * 1.2.7 - Fix DFC1 indication, update Xs calculation, modify HEU OK LED, and enable leakage indication in system OK.
 * 1.2.8 - Add SSR check dependencies procedure to insure the integrity response of the LED.
 * 1.2.9 - Disable check of 9th FAN, inverse the battle short switch, make the power on indication of ARDU, DFC1,2 as OK
 * 1.2.10 - change limits of 208V and 115V to +-10%
 * 1.2.11 - Gadi's changes (10s with virtual SSR register, add enable to the 28V test, SSR switch doesn't influence the SSR output), fix service read.
 * 1.2.12 - fix in X's measure (it should be active when shut down counts down), and fix in enabling 28V check (it should check also the switch)
 * 1.2.13 - ESR Over Temperature 50C instead of 40C
 * 1.2.14 - Add keep alive to the LAN communication, change baud rate of RS422 to 115200.
 * 1.2.15 - Add condition for X3 and X5 multiplier for 9800 system
 * 1.2.16 - change current limits for ARDU (13 to 17A) and DFC (2 to 3A) in 9408
 * 1.2.17 - reset CPU in case of keep alive failure, keeping the last SSR state.
 * 1.2.18 - fix 1P platform misunderstanding.
 * 1.2.19 - fix the reset of the I2C IO expander
 * 1.2.20 - Changes in protocol of ARDU/DFC1/DCF2 
 * 1.2.21 - fixed a bug in last version
 * 1.2.22 - change 485 devices baud to 115200
 * 1.2.23 - add writing down the 'X's to the EEPROM
 * 1.2.24 - Fix trail of the IO expender reset problem
 * 1.2.25 - Fix trail2 of the IO expender reset problem
 * 1.2.26 - Fix trail3 of the IO expender reset problem
 * 1.2.27 - Add pre reset delay
 * 
 * PSU-B
 * 1.0.0 - 
 */

#ifndef ORCONFIG_H
#define	ORCONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif
#define VERSION_H 1
#define VERSION_M 0
#define VERSION_L 0
#define KEEP_ALIVE_TIME 120//seconds
#define OR_BUFFER_SIZE 128

#define FAN_CHECK9_DIS

#ifdef	__cplusplus
}
#endif

#endif	/* ORCONFIG_H */

