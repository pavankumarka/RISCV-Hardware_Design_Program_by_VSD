/*flag used to debug on non x86 based CPU */
//#define SPIKE_DEBUG
//#define TEST_INPUT
//#define PRINT_TEST_INPUT

#ifdef SPIKE_DEBUG
#include <stdio.h>
#endif /* SPIKE_DEBUG */

/* main function definition */
void main()
{
	/* taking a count to make use of machine cycle */
	int count = 0;
	int dbflag;
	static int key;
	static int SW1 = 0 , SW2 = 0;
	static int LedPattern = 0;
	int maskgpio7to0 = 0xFFFFFF00;
	static int flag = 3;
	static int read_x30_reg_val;


	/* infinite loop */
	while(1)
	{
		count++; // increment the count
		asm volatile(
				"andi %0, x30, 256\n\t"
				"srl %0, %0, 8\n\t"
				"andi %1, x30, 512\n\t"
				"srl %1, %1, 9\n\t"
				:"=r"(SW1), "=r"(SW2)
				:
				:"x30"
			    );

#ifdef TEST_INPUT
		#ifdef PRINT_TEST_INPUT
		printf("SW1 = %d\tSW2 = %d\n", SW1, SW2);
		#endif /* PRINT_TEST_INPUT */
		SW2 = 1;
#endif /* TEST_INPUT */

		if(SW1 == 1){
			key = 1;
		}

		if(SW2 == 1){
			key = 2;
		}

		if(SW1 == 1 && SW2 ==1){
			key =0;
	        }

#ifdef PRINT_TEST_INPUT
		printf("SW1 = %d\tSW2 = %d\tkey = %d\n", SW1, SW2, key);
#endif /* PRINT_TEST_INPUT */

#ifdef PRINT_TEST_INPUT
		if (count % 49000 == 0) 
			printf(" count = %d\n", count);
#endif /*PRINT_TEST_INPUT*/

		if(count == 50 && dbflag == 0)
		{
			/* calling a function train flow */
			dbflag = 1;
			//	    train_flow(key);
			if(flag == 1)
			{
				LedPattern = (LedPattern <<= 1) | 1;
				asm volatile(
						"and x30, x30, %0\n\t"
						"or x30, x30, %1\n\t"
						:
						:"r"(maskgpio7to0), "r"(LedPattern)
						:"x30"
					    );
#ifdef SPIKE_DEBUG
				asm volatile(
						"andi %0, x30, 255\n\t"
						:"=r"(read_x30_reg_val)
						:
						:"x27"
					    );
#endif /* SPIKE_DEBUG */


				if(key == 2)
					flag = 4;
				if(LedPattern == 0xFF)
					flag = 2;
			}
			else if(flag == 2)
			{
				LedPattern <<= 1;
				asm volatile(
						"and x30, x30, %0\n\t"
						"or x30, x30, %1\n\t"
						:
						:"r"(maskgpio7to0), "r"(LedPattern)
						:"x30"
					    );
#ifdef SPIKE_DEBUG
				asm volatile(
						"andi %0, x30, 255\n\t"
						:"=r"(read_x30_reg_val)
						:
						:"x30"
					    );
#endif /* SPIKE_DEBUG */

				if(key == 2)
					flag = 3;
				if(LedPattern == 0)
					flag = 1;
			}
			else if(flag == 3)
			{
				LedPattern = (LedPattern >>= 1) | 0X80;
				asm volatile(
						"and x30, x30, %0\n\t"
						"or x30, x30, %1\n\t"
						:
						:"r"(maskgpio7to0), "r"(LedPattern)
						:"x30"
					    );
#ifdef SPIKE_DEBUG
				asm volatile(
						"andi %0, x30, 255\n\t"
						:"=r"(read_x30_reg_val)
						:
						:"x30"
					    );
#endif /* SPIKE_DEBUG */

				if(key == 1)
					flag = 2;
				if(LedPattern == 0xFF)
					flag = 4;
			}
			else if(flag == 4)
			{
				LedPattern >>= 1;
				asm volatile(
						"and x30, x30, %0\n\t"
						"or x30, x30, %1\n\t"
						:
						:"r"(maskgpio7to0), "r"(LedPattern)
						:"x30"
					    );
#ifdef SPIKE_DEBUG
				asm volatile(
						"andi %0, x30, 255\n\t"
						:"=r"(read_x30_reg_val)
						:
						:"x30"
					    );
#endif /* SPIKE_DEBUG */

				if(key == 1)
					flag = 1;
				if(LedPattern == 0x00)
					flag = 3;
			}
#ifdef SPIKE_DEBUG
			printf("key = %d\t\t flag = %d\t\tLedPattern = %d\tread_x30_reg_val = %d\n", key, flag, LedPattern, read_x30_reg_val);
#endif
			count = 0;// count initialize with zero 
		}

		if(count == 10)
			dbflag = 0;
	} /*infinite loop*/
}

