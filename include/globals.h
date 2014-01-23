/*
 * File:   globals.h
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */
#define FCY 40000000UL
#ifndef GLOBALS_H
#define	GLOBALS_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <p24hxxxx.h>
#include <Generic.h>
#include <libpic30.h>

#define IN          1
#define OUT         0
#define ON          IN
#define OFF         OUT

#define TRIG        ((Operation != PLUS) && \
                     (Operation != MINUS) && \
                     (Operation != MULTIPLY) && \
                     (Operation != DIVIDE)) 

#define DEG

    extern WORD OldKeyValue;
    extern unsigned char Key;
    extern char KeyData[10];
    
    extern volatile WORD_VAL Flag;

#define TriggerGetKeys          Flag.bits.b0
#define Func2nd                 Flag.bits.b1
#define Func3rd                 Flag.bits.b2
#define GotOperand1             Flag.bits.b3
#define GotOperand2             Flag.bits.b4
#define GotDecimal              Flag.bits.b5
#define Calculate               Flag.bits.b6
#define KeyPressed              Flag.bits.b7
#define LCDInit                 Flag.bits.b8
#define DEF10                   Flag.bits.b9
#define DEF11                   Flag.bits.b10
#define DEF12                   Flag.bits.b11
#define DEF13                   Flag.bits.b12
#define DEF14                   Flag.bits.b13
#define DEF15                   Flag.bits.b14
#define DEF16                   Flag.bits.b15


#define ROW1(state)             LATBbits.LATB8 = (state)
#define ROW2(state)             LATBbits.LATB9 = (state)
#define ROW3(state)             LATBbits.LATB10 = (state)
#define ROW4(state)             LATBbits.LATB11 = (state)

//#define DEBUG_PRINT_KEYS

    typedef enum
    {
        NO_OP = 0,
                PLUS,
                MINUS,
                MULTIPLY,
                DIVIDE,
                SIN,
                COS,
                TAN,
                ARCSIN,
                ARCCOS,
                ARCTAN,
                DEG2RAD,
                RAD2DEG
    }_OPERATION;

    extern _OPERATION Operation;

    typedef struct
    {
        double Operand1;
        double Operand2;
        double Result;
        _OPERATION Operator;
    }_CALCTERMS;

    extern _CALCTERMS Terms;


    WORD GetKeyPressed(void);
    void FindKey(WORD);
    void ParseInput(char);
    extern void InitGlobals(void);
    extern void InitLCD(void);


#ifdef	__cplusplus
}
#endif

#endif	/* GLOBALS_H */

