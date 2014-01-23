/*
 * File:   keypad.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <p24Hxxxx.h>
#include "../include/globals.h"

void SampleWait(void)
{
    volatile unsigned short i;
    for(i=0; i<7500; i++)
    {
        Nop();
    }
    return;
}

void ParseInput(char received)
{
    static int Index = 0;
    //KeyPressed = 0;

    if(((received >= '0') && (received <= '9')) && (10))
    {
        KeyData[Index] = received;          //put received char into array
        U1TXREG = received;                 //echo rec'd char to screen
        Index++;
        //Key = NULL;

    }
    else if ((received == '.' && !GotDecimal) && (Index < 10))
    {
        KeyData[Index] = received;          //put received char into array
        U1TXREG = received;                 //echo rec'd char to screen
        Index++;
        GotDecimal = 1;
        //Key = NULL;
    }
    else if((received == '-') && (Index == 10))
    {
            KeyData[Index] = received;
            U1TXREG = received;
            Index++;
    }
    if(received == 'O')
    {
        if(GotOperand1 && GotOperand2)
        {
            Terms.Operator = Operation;
            //Key = NULL;
        }
        //Key = NULL;
    }
    if(received == 'E')  //If enter is pressed
    {
        if (!GotOperand1 && !GotOperand2)
        {
            Terms.Operand1 = atof(KeyData);
            memset(KeyData, '\0', 10);
            GotDecimal = 0;
            GotOperand1 = 1;
            Index = 0;
            printf("%s\n", KeyData);
            //Key = NULL;
        }
        else if((GotOperand1 && !GotOperand2) && Operation == NO_OP)
        {
            Terms.Operand2 = atof(KeyData);
            memset(KeyData, '\0', 10);
            GotOperand2 = 1;
            GotDecimal = 0;
            Index = 0;
            printf("%s\n", KeyData);
            //Key = NULL;
        }
        else if(GotOperand1 && TRIG)
        {
            printf("Operand 1:  %f\n",Terms.Operand1);
            Terms.Operator = Operation;
            Calculate = 1;
            //Key = NULL;
        }
        else
        {
            Calculate = 1;
            Index = 0;
            //Key = NULL;
            
        }
    }
    //KeyPressed = 0;
    Key = NULL;
    return;
}

char AssignKey(int Index)
{
    if(Func3rd == 1)
    { // <editor-fold defaultstate="collapsed" desc="3rd Functions">
        

        switch (Index)
        {
            case 0:
                printf("\n1st\n");
                Func3rd = 0;
                break;
            case 1:
                //printf("0\n");
                break;
            case 2:
                printf("R -> D\n");
                Operation = RAD2DEG;
                break;
            case 3:
                printf("Enter\n");
                Key = 'E';
                //Func2nd = 0;
                break;
            case 4:
                //printf("7\n");
                break;
            case 5:
                //printf("8\n");
                break;
            case 6:
                //printf("9\n");
                break;
            case 7:
                printf("arctan\n");
                Operation = ARCTAN;
                //Func2nd = 0;
                break;
            case 8:
                //printf("4\n");
                break;
            case 9:
                //printf("5\n");
                break;
            case 10:
                //printf("6\n");
                break;
            case 11:
                printf("arccos\n");
                Operation = ARCCOS;
                //Func2nd = 0;
                break;
            case 12:
                //printf("1\n");
                break;
            case 13:
                //printf("2\n");
                break;
            case 14:
                //printf("3\n");
                break;
            case 15:
                printf("arcsin\n");
                Key = 'O';
                Operation = ARCSIN;
                //Func2nd = 0;
                break;
        }
        Func3rd = 0;

        // </editor-fold>
    }
    else if(Func2nd == 1)
    { // <editor-fold defaultstate="collapsed" desc="2nd Functions">
        

        switch (Index)
        {
            case 0:
                printf("\n3rd\n");
                Func3rd = 1;
                Func2nd = 0;
                break;
            case 1:
                //printf("0\n");
                break;
            case 2:
                printf("D - > R\n");
                Operation = DEG2RAD;
                break;
            case 3:
                printf("Enter\n");
                Key = 'E';
                Func2nd = 0;
                break;
            case 4:
                //printf("\n");
                //Operation = RAD2DEG;
                break;
            case 5:
                //printf("8\n");
                break;
            case 6:
                //printf("9\n");
                break;
            case 7:
                printf("tan\n");
                Operation = TAN;
                //Func2nd = 0;
                break;
            case 8:
                //printf("4\n");
                break;
            case 9:
                //printf("5\n");
                break;
            case 10:
                //printf("6\n");
                break;
            case 11:
                printf("cos\n");
                Operation = COS;
                //Func2nd = 0;
                break;
            case 12:
                //printf("1\n");
                break;
            case 13:
                //printf("2\n");
                break;
            case 14:
                //printf("3\n");
                break;
            case 15:
                printf("sin\n");
                Key = 'O';
                Operation = SIN;
                //Func2nd = 0;
                break;
        }
            Func2nd = 0;// </editor-fold>
    }
    else
    { // <editor-fold defaultstate="collapsed" desc="Base Functions">
        

        switch (Index)
        {
            case 0:
                printf("\n2nd\n");
                Func2nd = 1;
                break;
            case 1:
                //printf("0\n");
                Key = '0';
                break;
            case 2:
                //printf(".\n");
                Key = '.';
                break;
            case 3:
                printf(" / ");
//                if ((GotOperand1 && GotOperand2) && Operation != NO_OP)
//                {
//                    Key = 'E';
//                }
//                else
//                {
                    Key = 'O';
                    Operation = DIVIDE;
                //}
                break;
            case 4:
                //printf("7\n");
                Key = '7';
                break;
            case 5:
                //printf("8\n");
                Key = '8';
                break;
            case 6:
                //printf("9\n");
                Key = '9';
                break;
            case 7:
                printf(" * ");
                Key = 'O';
                Operation = MULTIPLY;
                break;
            case 8:
                //printf("4\n");
                Key = '4';
                break;
            case 9:
                //printf("5\n");
                Key = '5';
                break;
            case 10:
                //printf("6\n");
                Key = '6';
                break;
            case 11:
                Key = '-';
                printf(" - ");
                Key = 'O';
                Operation = MINUS;
                break;
            case 12:
                //printf("1\n");
                Key = '1';
                break;
            case 13:
                //printf("2\n");
                Key = '2';
                break;
            case 14:
                //printf("3\n");
                Key = '3';
                break;
            case 15:
                printf(" + ");
                Key = 'O';
                Operation = PLUS;
                break;
        }
//        if(Index != 0)
//        {
//        KeyPressed = 1;
//        }// </editor-fold>
    }
    return Key;
    
}
void FindKey(WORD TempButtons)
{
    int i;

    for (i=0; i<16; i++)
    {
       if(TempButtons & (1<< i))
        {
            AssignKey(i);
            break;//Comment out for multitouch
        }
    }
    return;
}

WORD GetKeyPressed(void)
{
    WORD PortVal;
    WORD AllButtons=0;


        ROW1(ON);
        SampleWait();
        PortVal = PORTB;
        ROW1(OFF);
        AllButtons=0;
        AllButtons|=(PortVal & 0xF000);

        ROW2(ON);
        SampleWait();
        PortVal = PORTB;
        ROW2(OFF);
        AllButtons |= (PortVal >> 4) & 0x0F00;

        ROW3(ON);
        SampleWait();
        PortVal = PORTB;
        ROW3(OFF);
        AllButtons |= (PortVal >> 8) & 0x00F0;

        ROW4(ON);
        SampleWait();
        PortVal = PORTB;
        ROW4(OFF);
        AllButtons |= (PortVal >> 12) & 0x000F;
#ifdef DEBUG_PRINT_KEYS
        printf("%04X\n",AllButtons);
#endif
        return (AllButtons);
}
