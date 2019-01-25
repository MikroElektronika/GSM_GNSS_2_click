/*

Use mikroE Timer Calculator to generate proper timer configuration
and timer ISR.

https://www.mikroe.com/timer-calculator

*/
#include "Click_GSM_GNSS_2_types.h"

uint32_t timerCounter = 0;

static void gsmgnss2_configTimer()
{


    // Configure Timer
}

void Timer_interrupt()
{
    gsmgnss2_tick();
	timerCounter++;
    // Reset Flag
}