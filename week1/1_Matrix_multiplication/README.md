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

2. addi

--> "ADD" and "ADDI" are both instructions for addition, but they have different purposes and operate on different types of operands.
The ADDI instruction, on the other hand, is used for adding an immediate value to a register operand and storing the result in a destination register.

FORMAT: ADDI rd, rs1, imm

      rd is the destination register where the result will be stored.
      rs1 is the source register.
      imm is the immediate value (a constant) that will be added to the value in rs1.

Eg1: ADDI x3, x1, 10

This instruction will add the immediate value 10 to the contents of register x1, and store the result in register x3.

3. call

--> In RISC-V, the CALL instruction is not a standard instruction in the base ISA (Instruction Set Architecture). 
However, you can create a function call that performs a specific action, such as getting the current time

4. j

--> The J instruction performs an unconditional jump to the target address by setting the PC (Program Counter) to the specified address. The jump destination is formed by concatenating bits from the current PC and the immediate target address.

JAL:
In RISC-V, there is also a pseudoinstruction called JAL (Jump and Link), which combines a jump with the storing of the return address in a register. It's commonly used for function calls. 

The JAL instruction has the following format:

            JAL rd, target

Where:

            rd: is the destination register where the return address will be stored.
            target: is the immediate target address.

5. lui

--> In the RISC-V ISA (Instruction Set Architecture), the LUI (Load Upper Immediate) instruction is used to set the upper 20 bits of a 32-bit register to an immediate value. It is often used to construct 32-bit constants or addresses that need to be loaded into a register.

SYNTAX: LUI rd, immediate

Where:

rd: is the destination register where the result will be stored.

immediate: is a 20-bit immediate value. This value is shifted left by 12 bits, and the lower 12 bits are set to zero.


6. lw

--> In RISC-V, the LW (Load Word) instruction is used to load a 32-bit word from memory into a register. 
This instruction is used when you want to access a value from memory and load it into a register for further processing. 

Syntax:

      LW rd, offset(rs1)

Where:
      
      rd: is the destination register where the loaded word will be stored.
      
      offset: is a 12-bit signed immediate value representing the offset from the base address in rs1.
      
      rs1: is the base register containing the base address from which to load the word.


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
2. cdqe
3. jmp
4. mov
5. movsx
6. sub
7. push

------------------------------------------------------------------------------------------------------------------------------------------





