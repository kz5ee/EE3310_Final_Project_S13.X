/*
 * File:   ADC_Setup.c
 * Author: Mike Peters
 * 1000750876
 *
 * Final Lab Project
 */

#include <adc.h>

inline void ADC1_Config(void)
{
    OpenADC1((//AD1CON1
            ADC_MODULE_ON       &     //Turn on ADC Module
            ADC_IDLE_CONTINUE   & //Continue to run in Idle mode
            ADC_AD12B_12BIT     &   //Run ADC in 12bit mode
            ADC_FORMAT_INTG     &  //Use unsigned fractions
            ADC_CLK_AUTO        &    //Clear SAMP to end sampling and begin conv.
            ADC_AUTO_SAMPLING_OFF & //Sample begins when SAMP is set.
            ADC_MULTIPLE        &      //Sample mult. channels in sequence
            ADC_AUTO_SAMPLING_OFF   &
            ADC_SAMP_OFF        &        //Sample/Hold amplifiers are holding
            ADC_ADDMABM_ORDER  //DMA buffers are written in the order of conversion
            ),  
            (//AD1CON2
            ADC_VREF_AVDD_AVSS & //Use AVdd & AVss as A2D Vref
            ADC_SELECT_CHAN_0 &  //Convert CH0
            ADC_SCAN_OFF &      //Do not scan inputs
            ADC_ALT_BUF_OFF & //Buffer configured as 1 16-word buffer
            ADC_ALT_INPUT_OFF //use MUXA only
            ),
            (//AD1CON3
            ADC_CONV_CLK_INTERNAL_RC & //Use ADC Internal RC clock
            ADC_SAMPLE_TIME_1 & //A/D Auto Sample Time 1 Tad
            ADC_CONV_CLK_256Tcy  //Tcy = Tad
            ),0xFFFF, //Chip has no DMA
            (//configport_l
            //ENABLE_ALL_DIG_0_15 &
            ENABLE_AN6_ANA
            ),
            (//configport_h
            ENABLE_ALL_DIG_16_31
            ),
            (//configscan_l
            //SKIP_SCAN_AN15 //Skip AN15 for Input Scan
            SCAN_NONE_0_15 //Skip AN0-AN15 for Input Scan
            ),
            (//configscan_h
            //SKIP_SCAN_AN31 //Skip AN31 for Input Scan
            SCAN_NONE_16_31 //Skip AN16-AN31 for Input Scan
            )
            );

    SetChanADC1(0,7);
    
}