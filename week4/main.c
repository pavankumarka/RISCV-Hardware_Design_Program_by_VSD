#include "main.h"

/* main function defination */
void main(void)
{
    
    /* taking a count to make use of machine cycle */
    unsigned int count = 0;
    unsigned char key, dbflag;

    unsigned short int SW1 = 0, SW2 = 0;
    
#ifdef x86_GCC_DEBUG
    printf("waiting for key direction: ");
#endif

    /* infinite loop */
    while(1)
    {
	count++; // increment the count

	key = scan_dkp(SW1, SW2);
	if(count == 50000 && dbflag == 0)
	{
	    /* calling a function train flow */
	    dbflag = 1;
	    train_flow(key);
	    count = 0;// count initialize with zero 
	}
	if(count == 10000)
	    dbflag = 0;
    }

}
