/* 
 * File:   Or24Fc512.h
 * Author: Michael
 *
 * Created on September 23, 2024, 2:42 PM
 */

#ifndef OR24FC512_H
#define	OR24FC512_H

#ifdef	__cplusplus
extern "C" {
#endif

    uint8_t Or24Read(void);
    uint8_t Or24Write(void);
    uint8_t Or24ReadCalib(void);
    uint8_t Or24WriteCalib(void);


#ifdef	__cplusplus
}
#endif

#endif	/* OR24FC512_H */

