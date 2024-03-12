/***************************************************************************
 * Problem statement	: Design an ALU to perform Arth and Logic operations
 * Design Requirement	: 1. Read 1 to 5 from terminal 	
 *                        2. Display corresponing operation +,-,X,/,% 
 * 
 * Author		: Pavan Kumar K Arakere
 *
 * Mathematical operator: 1.Add  2.Sub  3.Mul  4.Div  5.Mod
 * 			  6.NOT  7.OR   8.AND  9.NOR  A.NAND  B.XOR  C.XNOR  
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

void dispAluSuppOptnMsg( void );
void checkAluOptnSupport( unsigned int );
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

			/* return failure from main() */
			return FAILURE;
		} else { /*success case for ALU operation without command line arguments*/
			checkAluOptnSupport( aluOptr );

			/* reset default value to operator before exit*/
			aluOptr = 0x00;

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
			checkAluOptnSupport( aluOptr );

			/* reset default value to operator before exit*/
			aluOptr = 0x00;

			/* return SUCCESS from main() */
			return SUCCESS;
		} else {
			printAluErrMsg( 1 );

			/* reset default value to operator before exit */
			aluOptr = 0x00;

			/* return failure from main() */
			return FAILURE;

		}
	} else {
		printAluErrMsg( 0 );

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

void 
checkAluOptnSupport( unsigned int aluOptr){
	switch( aluOptr ){
		case 0x01:
			printf("Selected ALU operation is Addition\n");
			break;

		case 0x02:
			printf("Selected ALU operation is Subration\n");
			break;

		case 0x03:
			printf("Selected ALU operation is Multiplication\n");
			break;

		case 0x04:
			printf("Selected ALU operation is Division\n");
			break;

		case 0x05:
			printf("Selected ALU operation is Modulus\n");
			break;

		case 0x06:
			printf("Selected ALU operation is NOT\n");
			break;

		case 0x07:
			printf("Selected ALU operation is OR\n");
			break;

		case 0x08:
			printf("Selected ALU operation is AND\n");
			break;

		case 0x09:
			printf("Selected ALU operation is NOR\n");
			break;

		case 0x0A:
			printf("Selected ALU operation is NAND\n");
			break;

		case 0x0B:
			printf("Selected ALU operation is XOR\n");
			break;

		case 0x0C:
			printf("Selected ALU operation is XNOR\n");
			break;

		default:
			printf("Selected unknown ALU operation\n");
			dispAluSuppOptnMsg();
			break;
	}

	return;
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
