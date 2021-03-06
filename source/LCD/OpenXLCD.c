#include "../../include/LCD/xlcd.h"
#include <delay.h>

#ifdef _RB15

/*******************************************************************
Function Name:          OpenXLCD
Description:            This function configure the IO pins  
                        and initializes the LCD controller
                        the lcdtype should contain data on the type 
                        of interface and number of lines of display.
Input parameters:       char lcdtype 
Return value:           none
********************************************************************/
void OpenXLCD(char lcdType)
{

	/* Allow a delay for POR.(minimum of 15ms) */
	DelayPORXLCD();	
	
	/*Initialize the data port/control pins to zero */
	DATA_PIN_7 = 0;
	DATA_PIN_6 = 0;
	DATA_PIN_5 = 0;
	DATA_PIN_4 = 0;
	
	# ifdef EIGHT_BIT_INTERFACE
		DATA_PIN_3 = 0;
		DATA_PIN_2 = 0;
		DATA_PIN_1 = 0;
		DATA_PIN_0 = 0;
	#endif
	
	RW_PIN = 0;
	RS_PIN = 0;
	E_PIN = 0;
	
	/* Configure the data pins as outputs */
	TRIS_DATA_PIN_7 = 0;
	TRIS_DATA_PIN_6 = 0;
	TRIS_DATA_PIN_5 = 0;
	TRIS_DATA_PIN_4 = 0;
	
	#ifdef EIGHT_BIT_INTERFACE
		TRIS_DATA_PIN_3 = 0;
		TRIS_DATA_PIN_2 = 0;
		TRIS_DATA_PIN_1 = 0;
		TRIS_DATA_PIN_0 = 0;
	#endif
	
	/* Make all control pins as outputs */
	TRIS_RW = 0;
	TRIS_RS = 0;
	TRIS_E = 0;
 
	/* First Step  - Function Set as specified by lcdType*/
	WriteCmdXLCD(lcdType); 
	
	/* wait for command completion */
	while(BusyXLCD());
		  
	/* Second Step - Display ON/OFF CONTROL*/
	WriteCmdXLCD(DON & BLINK_OFF & CURSOR_ON);

    /* wait for command completion */
	while(BusyXLCD());
		
	/* Third Step - LCD Clear	*/	
	WriteCmdXLCD(CLEAR_XLCD);

    /* wait for command completion */	
    while(BusyXLCD());
	
	/*Fourth Step - Entry Mode Set	*/
	WriteCmdXLCD(ENTIRE_SHIFT_OFF & INCR_MODE);

    /* wait for command completion */
    while(BusyXLCD());

   } /* end of function */

#else
#warning "Does not build on this target"
#endif
