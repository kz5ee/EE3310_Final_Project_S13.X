
#include <p24Hxxxx.h>
#include <stdio.h>
#include <string.h>
#include "../include/globals.h"

//BYTE_VAL Flag.bits = 0;

volatile WORD_VAL Flag;
unsigned char Key = NULL;
_OPERATION Operation = NO_OP;
char KeyData[10];
//_CALCTERMS Terms;

void InitGlobals(void)
{
    Flag.Val = 0;
    memset(KeyData, '\0', sizeof(KeyData));

    return;
}