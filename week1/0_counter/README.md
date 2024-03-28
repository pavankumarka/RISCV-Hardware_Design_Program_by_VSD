![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f2383670-e297-4933-8d76-4f5d6a01ab7e)


Image illustrating Assembly language program comparison between RISCV compiler for (32 bit ) with AVR, ARM and x86 compiler.
-----------------------------------------------------------------------------------------------------------------------------

Response during 4bit counter execution:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/290a9496-4a44-4c1d-937b-78babf8fe3e9)


**For 4bit Counter program:** 

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


Further details here: 

https://blog.holbertonschool.com/hack-virtual-memory-stack-registers-assembly-code/ 

--------------------------------------------------------------------------------------------------------------------------------------------

Now, let us see the **AVR microcrontroller, aka 'Advanced Virtual RISC**' microcontroller instruction set, used to write ASM code for main() function of 4bit Counter program.  
		
		main:
		        push r28
		        push r29
		        rcall .
		        in r28,__SP_L__
		        in r29,__SP_H__
		.L__stack_usage = 4
		        std Y+2,__zero_reg__
		        std Y+1,__zero_reg__
				

Link: https://gcc.gnu.org/wiki/avr-gcc 

These instructions looks like 64bit wide, we shall see further details by exploring each instruction in above snippet.

1. push r28

2. push r29

--> push old Frame pointer values in r28 and r29 register. (AVR temporary registers)

3. rcall .
  
--> '.' means current value of program counter, is a smart way of pushing 2 bytes onto the stack.

4. in r28,__SP_L__
   
5. in r29,__SP_H__

--> Stack Pointer is 64bit wide double word register, r28 and r29 are copied into lower Word and higher word respectively.

6. __zero_reg__

--> Register r1, always zero. further details to be explored.

-----------------------------------------------------------------------------------------------------------------------------------------

ARM_64bit ASSEMBLY:

		main:
		        push    {r7, lr}
		        sub     sp, sp, #8
		        add     r7, sp, #0
		        movs    r3, #0
		        str     r3, [r7, #4]


1. push   {r7, lr}

   -->  (lr) Link register, storing the address to return to when the function is done.

   --> r7 is the register, which will have lr/address to return value.

2. sub    sp, sp, #8

   --> subtracts the constant value 0x08 from the stack pointer, and updates the stack pointer with the new result.

3. add    r7, sp, #0

   -->  add the constant value 0x00 from the stack pointer, and updates the r7 register with the new result.

4. movs r3, #0

   --> The MOVS instruction is used to copy a data item (byte, word or doubleword) from the source string to the destination string,
   also updates the N and Z flags

5. str     r3, [r7, #4]

   -->  Store 4Bytes, ; Register Indirect with pre-indexed MEM[R7+4] ? R3

-----------------------------------------------------------------------------------------------------------------------------------------

RISCV 32Bit ALP compiler output with details for function main() of 4bit counter program:
		
		main:
		        addi    sp,sp,-16
		        sw      ra,12(sp)
		        sw      s0,8(sp)
		        sw      s1,4(sp)
		        sw      s2,0(sp)
		        li      s0,0
		        li      s2,16
		        li      s1,499712
		        addi    s1,s1,288


1. addi    sp,sp,-16

2. sw      ra,12(sp)
3. sw      s0,8(sp)
4. sw      s1,4(sp)
5. sw      s2,0(sp)

6. li      s0,0
7. li      s2,16
8. li      s1,499712
9. addi    s1,s1,288


