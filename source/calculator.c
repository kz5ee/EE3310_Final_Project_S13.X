/*
 * File:   keypad.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#include <stdio.h>
#include "../include/globals.h"
#include "../include/calculator.h"

_CALCTERMS Terms;

double Deg2Rad(double Degrees)
{
    double Radians;
    Radians = Degrees * (PI / 180.);
    return Radians;
}

double Rad2Deg(double Radians)
{
    double Degrees;
    Degrees = Radians * (180. / PI);
    return Degrees;
}

double DoSin(double Angle)
{
    double Sine;
#ifdef DEG
    Angle = Deg2Rad(Angle);
#endif
    Sine = (double)sinf(Angle);
    return Sine;
}

double DoCos(double Angle)
{
    double CoSine;
#ifdef DEG
    Angle = Deg2Rad(Angle);
#endif
    CoSine = (double)cosf(Angle);
    return CoSine;
}

double DoTan(double Angle)
{
    double Tan;
#ifdef DEG
    Angle = Deg2Rad(Angle);
#endif
    Tan = (double)tanf(Angle);
    return Tan;
}

double DoArcSin(double Sine)
{
    double ArcSine;
    ArcSine = (double)asinf(Sine);
#ifdef DEG
    ArcSine = Rad2Deg(ArcSine);
#endif
    
    return ArcSine;
}

double DoArcCos(double CoSine)
{
    double ArcCoSine;
    ArcCoSine = (double)acosf(CoSine);
#ifdef DEG
    ArcCoSine = Rad2Deg(ArcCoSine);
#endif

    return ArcCoSine;
}

double DoArcTan(double Tan)
{
    double ArcTan;
    ArcTan = (double)atanf(Tan);
#ifdef DEG
    ArcTan = Rad2Deg(ArcTan);
#endif

    return ArcTan;
}


void DoCalculate(void)
{
    switch (Operation)
    {
        case NO_OP:
            break;
        case PLUS:
            Terms.Result = Terms.Operand1 + Terms.Operand2;
           break;
        case MINUS:
            Terms.Result = Terms.Operand1 - Terms.Operand2;
           break;
        case MULTIPLY:
            Terms.Result = Terms.Operand1 * Terms.Operand2;
           break;
        case DIVIDE:
            //if(Terms.Operand2 != 0)
            //{
                Terms.Result = Terms.Operand1 / Terms.Operand2;
            //}
           break;
        case SIN:
            Terms.Result = DoSin(Terms.Operand1);
           break;
        case COS:
            Terms.Result = DoCos(Terms.Operand1);
           break;
        case TAN:
            Terms.Result = DoTan(Terms.Operand1);
            break;
        case ARCSIN:
            Terms.Result = DoArcSin(Terms.Operand1);
            break;
        case ARCCOS:
            Terms.Result = DoArcCos(Terms.Operand1);
            break;
        case ARCTAN:
            Terms.Result = DoArcTan(Terms.Operand1);
            break;
        case DEG2RAD:
            Terms.Result = Deg2Rad(Terms.Operand1);
            break;
        case RAD2DEG:
            Terms.Result = Rad2Deg(Terms.Operand1);
            break;
    }
    
    return;
}
