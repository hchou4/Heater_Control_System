#include <p18f4620.h>
#include "Main.h"
#include "Fan_Support.h"
#include "stdio.h"

extern char FAN;
extern char duty_cycle;
extern char fan_set_temp;
extern signed int DS1621_tempF;

int get_duty_cycle(int temp, int set_temp)
{
// add code to check if temp is greater than set_temp. If so, dc = 0. Else dc = 2 times of difference of set_temp and temp
// check if dc is greater than 100. If so, set it to 100
// return dc
    if(temp > set_temp)
    {
        duty_cycle = 0;
    }
    else
    {
        duty_cycle = 2*(set_temp - temp);
    }
    return duty_cycle;
}

void Monitor_Fan()
{
    duty_cycle = get_duty_cycle(DS1621_tempF, fan_set_temp);
    do_update_pwm(duty_cycle);
    
    
    if (FAN == 1) 
    {
        FAN_EN = 1;
    }
    else FAN_EN = 0;
    //added code to make fan off when set_temp <ambien temp.
    if(duty_cycle ==0)
        FAN_EN =0;
}

void Toggle_Fan_Monitor()
{
// add code just to flip the variable FAN
    
    
    if(FAN ==0)
    {
       FAN =1;
    }else
    {
        FAN =0;
    }

}

int get_RPM()
{
// add old code
    int RPS = TMR3L / 2; // read the count. Since there are 2 pulses per rev 
     // then RPS = count /2 
    TMR3L = 0; // clear out the count 

    return (RPS * 60); // return RPM = 60 * RPS
}

void Toggle_Fan()
{
// add old code
    if(FAN ==0)
    {
        Turn_On_Fan();
    }else
    {
        Turn_Off_Fan();
    }
}

void Turn_Off_Fan()
{
// add old code
    FAN =0;
    FAN_EN =0;
    FANEN_LED =0;

}

void Turn_On_Fan()
{
// add old code 
    FAN = 1;
    do_update_pwm(duty_cycle);
    FAN_EN = 1;
    FANEN_LED = 1;
}

void Increase_Speed()
{
// add old code
    if (duty_cycle == 100) {
        Do_Beep();
        Do_Beep();
    } else
    {
        duty_cycle = duty_cycle + 5;
    }
}

void Decrease_Speed()
{
// add old code
    if (duty_cycle == 0) {
        Do_Beep();
        Do_Beep();
    } else
    {
        duty_cycle = duty_cycle - 5;
    }
}





