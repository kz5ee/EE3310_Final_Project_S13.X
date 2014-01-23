/*
 * File:   chip_setup.h
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#ifndef CHIP_SETUP_H
#define	CHIP_SETUP_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <p24hxxxx.h>

    extern void Timer1_Setup(void);
    extern void Pin_Setup(void);

#ifdef	__cplusplus
}
#endif

#endif	/* CHIP_SETUP_H */

