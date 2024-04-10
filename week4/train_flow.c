#include "main.h"

void train_flow(unsigned char key)
{
    static unsigned char LedPattern = 0;
    static unsigned short int flag = 3;
    static unsigned int resetGpioOutPins = 0xFFFFFF00;

    if(flag == 1)
    {
    	LedPattern = (LedPattern <<= 1) | 1;
    	//x30_reg = mask; //???? check how to send it to first 8bits
	asm volatile (
			"and x30, x30, %1\n\t"
			"or x30, x30, %0\n\t"
			:
			:"r"(LedPattern), "r"(resetGpioOutPins)
			:"x30"
		     );
    	if(key == 2)
    	    flag = 4;
    	if( LedPattern == 0xFF)
	    flag = 2;
    }
    else if(flag == 2)
    {
    	 LedPattern <<= 1;
    	//x30_reg = mask; //???? check how to send it to first 8bits
	asm volatile (
			"and x30, x30, %1\n\t"
			"or x30, x30, %0\n\t"
			:
			:"r"(LedPattern), "r"(resetGpioOutPins)
			:"x30"
		     );
    	if(key == 2)
    	    flag = 3;
    	if( LedPattern == 0)
    	    flag = 1;
    }
    else if(flag == 3)
    {
    	 LedPattern = (LedPattern >>= 1) | 0X80;
    	//x30_reg = mask; //???? check how to send it to first 8bits
	asm volatile (
			"and x30, x30, %1\n\t"
			"or x30, x30, %0\n\t"
			:
			:"r"(LedPattern), "r"(resetGpioOutPins)
			:"x30"
		     );
    	if(key == 1)
    	    flag = 2;
    	if(LedPattern == 0xFF)
	    flag = 4;
    }
    else if(flag == 4)
    {
    	 LedPattern >>= 1;
    	//x30_reg = mask; //???? check how to send it to first 8bits
	asm volatile (
			"and x30, x30, %1\n\t"
			"or x30, x30, %0\n\t"
			:
			:"r"(LedPattern), "r"(resetGpioOutPins)
			:"x30"
		     );
    	if(key == 1)
    	    flag = 1;
    	if(LedPattern == 0x00)
	    flag = 3;
    }

#ifdef x86_GCC_DEBUG
    printf(" LedPattern = %d\t\tx30_reg = %d\n", LedPattern, x30_reg);
#endif
  
    return;
}
