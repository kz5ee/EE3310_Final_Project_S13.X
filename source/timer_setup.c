/*
 * File:   timer_setup.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#include <timer.h>
#include <stdio.h>
#include "../include/chip_setup.h"

volatile short INT_Counter = 0;
short i = 0;

void Timer1_Setup(void)
{
    OpenTimer1(
            T1_ON &
            T1_IDLE_CON &       
            T1_GATE_OFF &
            T1_PS_1_64 &
            T1_SYNC_EXT_OFF &
            T1_SOURCE_INT,
            15625);//PR1 value for 50ms
    ConfigIntTimer1(
            T1_INT_PRIOR_1 &
            T1_INT_ON
                    );

    return;
}

