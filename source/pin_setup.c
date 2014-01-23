/*
 * File:   pin_setup.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */
#define FCY 40000000UL

#include <pps.h>
#include <libpic30.h>
#include "../include/chip_setup.h"
#include "../include/LCD/xlcd.h"
#include "../include/globals.h"



inline void Pin_Setup(void)
{
    AD1PCFGL = 0xffff;

    TRISBbits.TRISB15 = 1;
    TRISBbits.TRISB14 = 1;
    TRISBbits.TRISB13 = 1;
    TRISBbits.TRISB12 = 1;
    TRISBbits.TRISB11 = 0;
    TRISBbits.TRISB10 = 0;
    TRISBbits.TRISB9 = 0;
    TRISBbits.TRISB8 = 0;
    LATB = 0x0000;

    return;
}

inline void InitLCD(void)
{
    __delay_ms(50);
    OpenXLCD(EIGHT_BIT & TWO_LINE & SEG1_50_SEG51_100);
    __delay_ms(100);
    WriteCmdXLCD(INCR_MODE & ENTIRE_SHIFT_ON);
    __delay_ms(100);
    WriteCmdXLCD(DON & CURSOR_ON & BLINK_OFF);
    __delay_ms(100);
    WriteCmdXLCD(CLEAR_XLCD & RETURN_CURSOR_HOME);
    __delay_ms(100);

    return;
}

