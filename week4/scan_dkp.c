#include "main.h"

unsigned char scan_dkp(short int SW1, short int SW2)
{
	static unsigned char key;

	/* reading 8th bit as SW1 / input1 */
	asm volatile(
			"srli x10, x30, 8\n\t"
			"andi %0, x10, 1\n\t"
			:"=r" (SW1)
			:
			:"x30"
		    );

	/* reading 9th bit as SW2 / input2 */
	asm volatile(
			"srli x10, x30, 8\n\t"
			"andi %0, x10, 3\n\t"
			:"=r" (SW2)
			:
			:"x30"
		    );

	if(SW1 == 1) /* Check 8th bit if HIGH in x30 register after right shift */
	{
		key = 1;
	}

	if(SW2 == 2) /* Check 9th bit if HIGH in x30 register after right shift */
	{
		key = 2;
	}

	return key;
}
