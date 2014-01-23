/* 
 * File:   main.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */
//Include builtin headers
#include    <stdio.h>
#include    <stdlib.h>
#include    <p24Hxxxx.h>
#include    <Generic.h>
#include    <delay.h>
//Include custom headers
#include "include/uart_config.h"
#include "include/chip_setup.h"
#include "include/globals.h"
#include "include/calculator.h"
#include "include/LCD/xlcd.h"

/*
 WORDS OF POWER

 * The configuration below sets up the chip configuration.
 * FBS:         Write to Boot Segment, No boot program to flash, No Boot RAM
 * FGS:         Program Memory not write protected, Code protect disabled
 * FOSCSEL:     Use Internal Fast RC, Device startup with selected oscillator source
 * FOSC:        OSC2 pin is digital I/O, No Primary Oscillator, Clock Switching Enabled
 *                Fail-Safe Clock Monitor disabled
 * FWDT:        Postscalar 1:8192, Prescalar 1:32, WDT is in Non-Window mode, WDT enabled by software
 * FPOR:        POR set for 128ms
 * FICD:        Use PGD1 for programming, JTAG Disabled
 */
_FBS(BWRP_WRPROTECT_OFF & BSS_NO_BOOT_CODE )
_FGS(GWRP_OFF & GCP_OFF)
_FOSCSEL( FNOSC_FRCPLL & IESO_OFF)
_FOSC(OSCIOFNC_ON & POSCMD_NONE & FCKSM_CSECMD)
_FWDT( WDTPOST_PS8192 & WDTPRE_PR32 & WINDIS_OFF & FWDTEN_OFF)
_FPOR( FPWRT_PWR128)
_FICD( ICS_PGD2 & JTAGEN_OFF)

/*
 * 
 */
        

int main(int argc, char** argv) {
    WORD KeyVal;
    char ResString[10];
    
    void Ludacris_Speed_GO(void);
    Ludacris_Speed_GO();
    InitGlobals();
    InitLCD();
    
    Timer1_Setup();

    UART1_Config();
    Pin_Setup();
    printf("\nUART Configured\n\n");

    while(1)
    {
        __delay_ms(250);
        PutsXLCD("No Workie!  ");
        if(!Calculate)
        {
          if(TriggerGetKeys)
            {
                KeyVal = GetKeyPressed();
                FindKey(KeyVal);
                if(Key != NULL)
                {
                    ParseInput(Key);
                }
            TriggerGetKeys = 0;
            }
        }
        else
        {
            DoCalculate();
            printf("%f\n", Terms.Result);
            sprintf(ResString, "%f", Terms.Result);
            PutsXLCD(ResString);
            TriggerGetKeys = 0;
            Calculate = 0;
            GotOperand1 = 0;
            GotOperand2 = 0;
            Operation = NO_OP;
        }
    }

    return (EXIT_SUCCESS);
}

inline void Ludacris_Speed_GO()
{
    //This code from Microchip Family Ref. 39 Oscillator(Part III)
    //Example 39-1
    //Configure PLL prescaler, PLL postscaler, PLL divisor
    PLLFBD = 41; // M = 43
    CLKDIVbits.PLLPOST = 0; // N2 = 2
    CLKDIVbits.PLLPRE = 0; // N1 = 2
    // Initiate Clock Switch to Internal FRC with PLL (NOSC = 0b001)
    __builtin_write_OSCCONH(0x01);
    __builtin_write_OSCCONL(0x01);
    // Wait for Clock switch to occur
    while (OSCCONbits.COSC != 0b001);
    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1) {};
    return;
}