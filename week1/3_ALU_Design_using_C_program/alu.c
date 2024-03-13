
/***************************************************************************
 * Problem statement	: Design an ALU to perform Arth and Logic operations
 * Design Requirement	: 1. Read 1 to 12 from terminal or CLA 	
 *                        2. Display corresponing operation +,-,X,/,%,|,^...
 * 
 * Author		: Pavan Kumar K Arakere
 *
 * Mathematical operator: 1.Add  2.Sub  3.Mul  4.Div  5.Mod
 * Logical Operator	: 6.NOT  7.OR   8.AND  9.NOR  A.NAND  B.XOR  C.XNOR  
 *
 * This Program supports both With / without command line arguments (CLA)
 * Eg1: Run with CLA	: alu.a 10 
 * Output		: Perform NAND operation
 *
 * Eg2: Run without CLA	: alu.a
 * Input		: Enter no. b/n 0x01 to 0x0C to perform ALU operation:4
 * Output		: Perform DIVISION operation
 *
 * Additional Design: 
 * Command Line arguments process accepts Integer values (0-12)
 * Non-Command line argument process accepts Hex Values (0x00 - 0x0c)
 *
 * *************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define SUCCESS 0
#define FAILURE -1

unsigned int aluOut = 0;

void dispAluSuppOptnMsg( void );
unsigned int checkAluOptnSupport( unsigned int );
void printAluErrMsg ( int );

int 
main(int argc, char** argv){

	/* set default value to operator */
	unsigned int aluOptr = 0;

	/*condition for without input as command line argument*/
	if ( argc == 1 ){
		dispAluSuppOptnMsg();
		printf("Select a num b/n 0x01 to 0x0C to perform ALU opertn: ");
		scanf("%x", &aluOptr);
		printf("entry point aluOptr = 0x%x\n", aluOptr);
		if(aluOptr <= 0 || aluOptr > 0x0C){
			printAluErrMsg( 1 );

			/* reset default value to operator before exit */
			aluOptr = 0x00;
			aluOut  = 0x00;

			/* return failure from main() */
			return FAILURE;
		} else { /*success case for ALU operation without command line arguments*/
			aluOut = checkAluOptnSupport( aluOptr );

			/* reset default value to operator before exit*/
			aluOptr = 0x00;
			aluOut  = 0x00;

			/* return SUCCESS from main() */
			return SUCCESS;
		}

		/* return SUCCESS from main() */
		return SUCCESS;
	} else if( argc == 2 ) {
		/*success case for ALU operation with command line arguments*/
		aluOptr = ( unsigned int )atoi(argv[1]);
		printf("entry point aluOptr = 0x%x\n", aluOptr);
		if( aluOptr > 0 && aluOptr < 0x0D ){
			printf("entry point aluOptr = 0x%x\n", aluOptr);
			aluOut = checkAluOptnSupport( aluOptr );

			/* reset default value to operator before exit*/
			aluOptr = 0x00;
			aluOut  = 0x00;

			/* return SUCCESS from main() */
			return SUCCESS;
		} else {
			printAluErrMsg( 1 );

			/* reset default value to operator before exit */
			aluOptr = 0x00;
			aluOut  = 0x00;

			/* return failure from main() */
			return FAILURE;

		}
	} else {
		printAluErrMsg( 0 );
		/* reset default value to operator before exit */
		aluOptr = 0x00;
		aluOut  = 0x00;

		/* return failure from main */
		return FAILURE;
	}
}

void 
dispAluSuppOptnMsg( void ) {
	printf("ALU supported Math operations:\n");
	printf("1.Add  2.Sub  3.Mul  4.Div  5.Mod\n\n");
	printf("ALU supported Logical operations:\n");
	printf("6.NOT  7.OR   8.AND  9.NOR  A.NAND  B.XOR  C.XNOR\n\n");
}

unsigned int 
checkAluOptnSupport( unsigned int aluOptr){
	switch( aluOptr ){
		case 0x01:
			aluOut = '+';
			printf("Selected ALU operation is Addition: %d\n", aluOut);
			break;

		case 0x02:
			aluOut = '-';
			printf("Selected ALU operation is Subration: %d\n", aluOut);
			break;

		case 0x03:
			aluOut = '*';
			printf("Selected ALU operation is Multiplication: %d\n", aluOut);
			break;

		case 0x04:
			aluOut = '/';
			printf("Selected ALU operation is Division: %d\n", aluOut);
			break;

		case 0x05:
			aluOut = '%';
			printf("Selected ALU operation is Modulus: %d\n", aluOut);
			break;

		case 0x06:
			aluOut = '!';
			printf("Selected ALU operation is NOT: %d\n", aluOut);
			break;

		case 0x07:
			aluOut = '|';
			printf("Selected ALU operation is OR: %d\n", aluOut);
			break;

		case 0x08:
			aluOut = '&';
			printf("Selected ALU operation is AND: %d\n", aluOut);
			break;

		case 0x09:
			aluOut = 0x85;
			printf("Selected ALU operation is NOR: %d\n", aluOut);
			break;

		case 0x0A:
			aluOut = 0x86;
			printf("Selected ALU operation is NAND: %d\n", aluOut);
			break;

		case 0x0B:
			aluOut = 0x87;
			printf("Selected ALU operation is XOR: %d\n", aluOut);
			break;

		case 0x0C:
			aluOut = 0x88;
			printf("Selected ALU operation is XNOR: %d\n", aluOut);
			break;

		default:
			aluOut = 0x00;
			printf("Selected unknown ALU operation: %d\n", aluOut);
			dispAluSuppOptnMsg();
			break;
	}

	return aluOut;
}

void 
printAluErrMsg ( int ErrNum ){
	switch( ErrNum ){
		case 0:
			printf("\nCommand Line arguments greater than 2 or unknown ALU operation\n\n");
			dispAluSuppOptnMsg();
			break;

		case 1:
			printf("\nUnknown ALU operation\n\n");
			dispAluSuppOptnMsg();
			break;
	}

	return;
}
