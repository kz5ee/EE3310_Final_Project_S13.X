/*
 * File:   isr.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#include <p24Hxxxx.h>
#include <stdio.h>
#include "../include/globals.h"
#include "../include/calculator.h"
#include "../include/LCD/xlcd.h"


void __attribute__((interrupt, auto_psv)) _ISR _T1Interrupt(void)
{
    static BYTE counter=0;

    _T1IF = 0;

    if((counter++ % 5) == 0)
    {
        TriggerGetKeys = 1;

    }
    //Throw
    return;
}

//void __attribute__((interrupt, auto_psv)) _ISR _CNInterrupt(void)
//{
//    _CNIF = 0;
//    char br = 0x4e;
//    printf("Interrupt Fired\n");
//    if (PORTBbits.RB12)
//    {
//        WriteCmdXLCD(EIGHT_BIT & TWO_LINE & SMALL_FONT);
//        //LCDInit = 1;
//    }
//    else
//    {
//        WriteCmdXLCD(DON & CURSOR_ON & BLINK_OFF);
//        PutsXLCD(&br);
//        LCDInit = 1;
//    }
//
//    return;
//}
