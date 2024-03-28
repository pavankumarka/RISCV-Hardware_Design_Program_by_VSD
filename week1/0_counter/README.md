![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f2383670-e297-4933-8d76-4f5d6a01ab7e)


Image illustrating Assembly language program comparison between RISCV compiler for (32 bit ) with AVR, ARM and x86 compiler.
-----------------------------------------------------------------------------------------------------------------------------

Response during 4bit counter execution:
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/290a9496-4a44-4c1d-937b-78babf8fe3e9)


For 4bit Counter program, 

In main function, our aim is to display the count till 16 from 0, after waiting for some delay and incrementing the count value by 1.

At this stage, we will see details of the assembly program by comparing the main() program of the different instruction set Assembly program obtained using gotbolt
compiler, later we will focus on rest of the functions

1. main() Program for 4bit counter :

int main()
{
	int count = 0x00000000;
	while (1)
	{
		display(count);
		count++;
        if(count==16){
            count=0;
        }
		delay(500000);   // delay by 0.5 microseconds
	}
}


Program steps: 

1. in main() program, a local variable 'count' of data type integer is set to 0

2. A display() function is used to print the count value.

3. count++ instruction increments count value by 1.

4. As the requirement is to check counter till 16 and reset it back to 0, next the condition is checked.

5. A delay of 0.5msec is maintained between incrementing count value and display the count value in stdout.  


**In x86 based 64 bit GCC Compiler, the assembly code looks like below,**

main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0


we see instructions like: push, mov, sub. Each of these instructions have further details, those need to be explored,

1. push rbp
--> The first lines of the function main refers to rbp and rsp; these are special purpose registers. rbp is the base pointer, which points to the base of the 
current stack frame, and rsp is the stack pointer, which points to the top of the current stack frame.

2. mov rbp, rsp 
--> copies the value of the stack pointer rsp to the base pointer rbp -> rpb, and rsp now both point to the top of the stack.

3. sub     rsp, 16
--> We have just created a space in memory – on the stack – for our local variables. This space is called a stack frame. Every function that has local variables will use a stack frame to store those variables.

4. mov     DWORD PTR [rbp-4], 0
-->  Here in this instruction, it is setting the memory at address rbp - 4 to 0. [rbp - 4] IS our local variable 'count'. The computer doesn’t actually know the name of the variable we use in our code, it simply refers to memory addresses on the stack.
