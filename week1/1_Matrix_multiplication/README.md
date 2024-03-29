Matrix Multiplication Driver function:
      
      void mulMat(int mat1[][C1], int mat2[][C2])
      {
      	int rslt[R1][C2];
      
      	printf("Multiplication of given two matrices is:\n");
      
          clock_t start_time, end_time;
      
          start_time = clock() ; 
      
      	for (int i = 0; i < R1; i++) {
      		for (int j = 0; j < C2; j++) {
      			rslt[i][j] = 0;
      
      			for (int k = 0; k < R2; k++) {
      				rslt[i][j] += mat1[i][k] * mat2[k][j];
      			}
      
      			printf("%d\t", rslt[i][j]);
      		}
      
      		printf("\n");
      	}
      
          end_time = clock() ; 
          printf("Total time taken in seconds %d:\n", end_time - start_time);
      
      }
---------------------------------------------------------------------------------------------------------------------------------------

Assembler Comparison wrt instuction set using Gotbolt compiler:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5d0c2da7-2d83-4980-b4df-00c8ba1c3507)

---------------------------------------------------------------------------------------------------------------------------------------

**Instructions seen in 32bit and 64bit RISC-V ISA are below which uses following registers**

Registers: sp, ra, s0, a1 - a5, zero.


Instructions:

1. add

The ADD instruction is used for adding two register operands and storing the result in a destination register.

FORMAT: add rd, rs1, rs2

      rd is the destination register where the result will be stored.
      rs1 is the first source register.
      rs2 is the second source register.

Eg1: ADD x3, x1, x2

      This instruction will add the contents of registers x1 and x2, and store the result in register x3.

-------------------------------------------------------------------------------------------------------------

2. addi

--> "ADD" and "ADDI" are both instructions for addition, but they have different purposes and operate on different types of operands.
The ADDI instruction, on the other hand, is used for adding an immediate value to a register operand and storing the result in a destination register.

FORMAT: ADDI rd, rs1, imm

      rd is the destination register where the result will be stored.
      rs1 is the source register.
      imm is the immediate value (a constant) that will be added to the value in rs1.

Eg1: ADDI x3, x1, 10

This instruction will add the immediate value 10 to the contents of register x1, and store the result in register x3.

-------------------------------------------------------------------------------------------------------------

3. call

--> In RISC-V, the CALL instruction is not a standard instruction in the base ISA (Instruction Set Architecture). 
However, you can create a function call that performs a specific action, such as getting the current time

-------------------------------------------------------------------------------------------------------------

4. j

--> The J instruction performs an unconditional jump to the target address by setting the PC (Program Counter) to the specified address. The jump destination is formed by concatenating bits from the current PC and the immediate target address.

JAL:
In RISC-V, there is also a pseudoinstruction called JAL (Jump and Link), which combines a jump with the storing of the return address in a register. It's commonly used for function calls. 

The JAL instruction has the following format:

            JAL rd, target

Where:

            rd: is the destination register where the return address will be stored.
            target: is the immediate target address.

-------------------------------------------------------------------------------------------------------------

5. lui

--> In the RISC-V ISA (Instruction Set Architecture), the LUI (Load Upper Immediate) instruction is used to set the upper 20 bits of a 32-bit register to an immediate value. It is often used to construct 32-bit constants or addresses that need to be loaded into a register.

SYNTAX: LUI rd, immediate

Where:

rd: is the destination register where the result will be stored.

immediate: is a 20-bit immediate value. This value is shifted left by 12 bits, and the lower 12 bits are set to zero.

-------------------------------------------------------------------------------------------------------------

6. lw

--> In RISC-V, the LW (Load Word) instruction is used to load a 32-bit word from memory into a register. 
This instruction is used when you want to access a value from memory and load it into a register for further processing. 

Syntax:

      LW rd, offset(rs1)

Where:
      
      rd: is the destination register where the loaded word will be stored.
      
      offset: is a 12-bit signed immediate value representing the offset from the base address in rs1.
      
      rs1: is the base register containing the base address from which to load the word.

-------------------------------------------------------------------------------------------------------------

7. slli

--> In RISC-V, the SLLI (Shift Left Logical Immediate) instruction is used to perform a logical left shift on a register by an immediate amount. 

It shifts the bits of the source register to the left by a specified number of positions, filling the vacated positions with zeroes. 

Syntax:

      SLLI rd, rs1, shamt

Where:

      rd is the destination register where the result will be stored.
      rs1 is the source register whose contents will be shifted.
      shamt is a 5-bit immediate value representing the shift amount.

Eg: 

SLLI x3, x5, 3
In this example:
      
      The SLLI instruction shifts the contents of register x5 left by 3 positions.
      The result is stored in register x3.

The SLLI instruction in RISC-V is encoded as follows:

            Bits [31:25]: Opcode (always 0b0010011 for arithmetic instructions)
            Bits [24:20]: Destination register (rd)
            Bits [19:15]: Source register (rs1)
            Bits [14:12]: Function (always 0b001 for SLLI)
            Bits [11:7]: Shift amount (shamt)
            Bits [6:0]: Function (always 0b0000000)

-------------------------------------------------------------------------------------------------------------

8. sw

In RISC-V, the SW (Store Word) instruction is used to store a 32-bit word from a register into memory.

This instruction is used when you want to write a value from a register to a specific memory address. 

Syntax:

      SW rs2, offset(rs1)

Where:

      rs2 is the source register containing the data to be stored.
      offset is a 12-bit signed immediate value representing the offset from the base address in rs1.
      rs1 is the base register containing the base address where the data will be stored.

------------------------------------------------------------------------------------------------------------------------------------------

In x86 ISA, the instructions used are,

      call, cdqe, jmp, mov, movsx, sub, push

These instruction keywords are bind with registers such as,

rbp, rsp, edi, eax, ecx, edx, rax, rdx

Details about instructions: 

1. call

--> In x86 assembly language, the CALL instruction is used to call a subroutine or function. 
When the CALL instruction is executed, it pushes the return address onto the stack and transfers control to the specified subroutine.

--> The CALL instruction is used to transfer control to a subroutine or function in x86 assembly.

--> The return address is pushed onto the stack before jumping to the subroutine.

--> The RET instruction is used in the subroutine to return control to the instruction following the CALL instruction.

Eg1: CALL 0x12345678    ; Call the subroutine at memory address 0x12345678

Eg2: in _start, my_function is called and returns to same place after executing instructions in my_function.

            section .text
                global _start
            
            _start:
                CALL my_function   ; Call the my_function subroutine
                ; Continue execution here after my_function returns
            
            my_function:
                ; Subroutine code here
                ; This is where the CALL instruction jumps to
                RET                ; Return from subroutine

-------------------------------------------------------------------------------------------------------------
2. cdqe

--> In x86 assembly language, the CDQE instruction is used to sign-extend a 32-bit value stored in the EAX register to a 64-bit value stored in the RAX register. 

--> This instruction is specifically used in 64-bit mode to extend the sign of a 32-bit value in the lower half of the 64-bit register.

Eg: 
            
            section .data
                my_value dd 0xFFFFFFFF  ; A signed 32-bit value, -1 in decimal
            
            section .text
                global _start
            
            _start:
                MOV EAX, dword [my_value]  ; Load a 32-bit signed value into EAX
                CDQE                        ; Sign-extend EAX to RAX
            
                ; At this point, RAX contains the sign-extended 64-bit value
                ; Do something with RAX, such as store it or use it in calculations

-------------------------------------------------------------------------------------------------------------
3. jmp

--> In x86 assembly language, the JMP (Jump) instruction is used to transfer control unconditionally to a different location in the program. 

--> When the JMP instruction is executed, the program execution flow jumps to the specified label or memory address.

SYNTAX:
      
      JMP label     ; Jump to a label
      
      JMP address   ; Jump to an absolute memory address
      
-------------------------------------------------------------------------------------------------------------
4. mov

--> In x86 assembly language, the MOV instruction is used to move data from one location to another. 

--> It is one of the fundamental instructions for working with data in registers and memory. 

--> The MOV instruction can move data between registers, immediate values, and memory locations.

Syntax:
      MOV destination, source

-------------------------------------------------------------------------------------------------------------
5. movsx

--> In x86 assembly language, the MOVSX instruction is used to move and sign-extend a value from a source operand into a destination register. 

--> This instruction is particularly useful when working with signed integers and when you need to extend the sign of a smaller data type to a larger data type.

Syntax:

            MOVSX destination, source

-------------------------------------------------------------------------------------------------------------
6. sub

--> The SUB instruction is used for subtracting values in x86 assembly.

--> The size of the operands determines the size of the subtraction operation (BYTE, WORD, DWORD, or QWORD).

--> If the result of the subtraction is zero, the Zero Flag (ZF) in the flags register will be set.

--> If the result is negative, the Sign Flag (SF) in the flags register will be set.

--> Overflow occurs if the result cannot be represented in the destination operand size.

SYNTAX: 
      SUB destination, source

Where:

      destination is the destination operand where the result will be stored.
      source is the operand to be subtracted from the destination.

-------------------------------------------------------------------------------------------------------------
7. push

--> In x86 assembly language, the PUSH instruction is used to push a value onto the stack.

--> The stack is a region of memory that is used for temporary storage and for passing arguments to functions. 

--> When you PUSH a value onto the stack, the stack pointer (ESP or RSP register) is decremented, and the value is written to the memory location pointed to by the stack pointer.

Syntax:
      PUSH source

Eg1:  PUSH EAX   ; Push the value in EAX onto the stack
This instruction pushes the current value of the EAX register onto the stack.

2. Push an Immediate Value onto the Stack:
      PUSH 10   ; Push the immediate value 10 onto the stack
This instruction pushes the value 10 onto the stack.

3. Push a Memory Location onto the Stack:
      PUSH DWORD [my_variable]   ; Push the value at memory location my_variable onto the

------------------------------------------------------------------------------------------------------------------------------------------



