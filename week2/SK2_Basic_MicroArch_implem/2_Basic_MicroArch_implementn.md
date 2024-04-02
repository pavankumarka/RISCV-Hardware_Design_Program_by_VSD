# W2_SK2_L1 - Introduction To Program Counter And Instr Memory

RISC-V Microarchitecture Implementation:
----------------------------------------------------------------------------------

RISC-V Instruction Set Architecture (ISA) used to define RISC-V Microarchitecture.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3f587d7e-0244-444c-b73c-55fc4378b317)

Basically in the code memory addresses shown above the Program counter jumps 4Bytes each time.

By exploring each 4Bytes jump, we can see the instructions are alligned 4Btyes each as "instrn_token destn_reg, sourc_reg, +(optional_imme_val_or_reg)".

Instn1: ADD x3, x1, x2

  This instruction will add the contents of registers x1 and x2, and store the result in register x3.

-------------------------------------------------------------------------------------------------------------

Instn2: sd

In the RISC-V ISA (Instruction Set Architecture), the sd instruction is used to store a 64-bit value from a register into memory. 

This instruction stores a doubleword (64 bits) from a register into memory at the specified address.

Syntax: 
    sd rs2, offset(rs1)

Where:

rs2 is the source register containing the 64-bit value to be stored.

offset is an immediate offset that is added to the contents of register rs1 to calculate the memory address.

rs1 is the base register that holds the base address of the memory location.

-------------------------------------------------------------------------------------------------------------

Instn3: ld

In the RISC-V ISA (Instruction Set Architecture), the ld instruction is used to load a 64-bit value from memory into a register. 
This instruction loads a doubleword (64 bits) from memory into the specified register.

Syntax:
    ld rd, offset(rs1)

Where:

rd is the destination register where the 64-bit value will be loaded.

offset is an immediate offset that is added to the contents of register rs1 to calculate the memory address.

rs1 is the base register that holds the base address of the memory location.

---------------------------------------------------------------------------------------------------------------------------------------------
Instrn3: sub

In RISC-V assembly language, the sub instruction is used to subtract two values and store the result in a destination register. 
The sub instruction subtracts the second operand from the first operand and stores the result in the destination register.

Syntax:

sub rd, rs1, rs2

Where:

rd is the destination register where the result of the subtraction will be stored.

rs1 is the first operand (source register containing the minuend).

rs2 is the second operand (source register containing the subtrahend).


Eg: RV32I Example: Subtract the value in x5 from the value in x4, store in x3
sub x3, x4, x5

---------------------------------------------------------------------------------------------------------------------------------------------
Instrn4: and

In RISC-V assembly language, the and instruction is used to perform a bitwise AND operation between two operands and store the result in a destination register. 

The and instruction performs a bitwise AND operation on each pair of corresponding bits in the operands.

Syntax:
    and rd, rs1, rs2

Where:

rd is the destination register where the result of the AND operation will be stored.

rs1 is the first operand (source register).

rs2 is the second operand (source register).

Eg: # Masking: Clear lower 4 bits of x5, store result in x6

      and x6, x5, x6_mask
      
x6_mask: .word 0xFFFFFFF0  # Binary: 11111111111111111111111111110000

In this example, x6_mask is used to clear the lower 4 bits of x5, effectively setting them to 0.

---------------------------------------------------------------------------------------------------------------------------------------------
Instrn5: or

In RISC-V assembly language, the or instruction is used to perform a bitwise OR operation between two operands and store the result in a destination register. 

The or instruction performs a bitwise OR operation on each pair of corresponding bits in the operands.

Syntax:
      or rd, rs1, rs2

Where:

rd is the destination register where the result of the OR operation will be stored.

rs1 is the first operand (source register).

rs2 is the second operand (source register).

---------------------------------------------------------------------------------------------------------------------------------------------

Instrn6: beq

In the RISC-V ISA (Instruction Set Architecture), the beq instruction is a branch instruction used to perform a branch if two registers are equal. 

If the values in the two specified registers are equal, the beq instruction transfers control to the target address.

Syntax:
      beq rs1, rs2, offset

Where:

rs1 is the first source register.

rs2 is the second source register.

offset is a signed immediate offset specifying the branch target relative to the current instruction.

**Description:**

The beq instruction checks if the values in registers rs1 and rs2 are equal. 

If they are equal, the program counter (PC) is updated to the current PC plus the sign-extended offset, causing a branch to the target instruction. 

If the values are not equal, execution continues with the instruction following the beq.

Eg: 

# Branch to label "target" if values in x2 and x3 are equal
    beq x2, x3, target

# Instructions following the branch if x2 and x3 are not equal 

In this example:

If the values in registers x2 and x3 are equal, the control flow will branch to the target label.

If the values are not equal, execution continues with the instructions following the beq.

---------------------------------------------------------------------------------------------------------------------------------------------

To conclude:

1. PC contains the address of the current instruction.

2. Every instruction reads one or two registers, and writes the new values back to one register at least.

3.  In hardware terminology to expalin, let us consider PC as a register, and it is a Flip-Flop in hardware world, where size can be defined.

  Let us say it is 32bit register, it can hold 4Bytes data.

4. Instruction memory or the code memory is of Static-RAM (SRAM) model.

---------------------------------------------------------------------------------------------------------------------------------------------

# W2_SK2_L2 - Introduction To Register File And Data Memory

---------------------------------------------------------------------

--> Instructions are compraised of registers and immediate values.

--> RISC-V 32R or 64R, meaning Registers supported RISC-V ISA for 32bit and/or 64bit CPU. In either bit architecture, there are only 32 number of registers supported. (2^5 = 32 i.e from 0to31)

--> Instructions uses Registers for multiple math and logic operations. These registers are part of memory called Register Bank. These memories locations in the Register Bank have addresses. Whenever a register is called, actually we will refer to either address or values in that specific address of a register Bank.

--> This register bank is connected to ALU.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5431a073-f979-4a33-93b5-9bf9fa114f51)

--> ALU takes 2 or 3 registers values as inputs at a time in "R" type CPU, and also the immediate values in case of RISC-V 32/64 "I" type CPU.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4e421e1d-9cbc-4c94-8cc9-f5e716042bf3)

--> Initially the Data memory has to be filled, some address gets filled in to data memory, and the data memory gives the output as some values avaialble.

# lets us understand Memory Access ..

--> Memory acccess is done via ld (load) and store instructions. Store can be done in multiple ways, likewise load.

--> Eg: a2 = mem(8 + sp) 
      This means, ALU job is to obtain / return the 8+sp value. this value 8 is coming from given input instruction, the user has given.
      If we decode instruction properly we will come to know why value 8?, the ALU calculates the address using immediate value/ hard value 8 + sp, and gives it to memory as input.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c27d8114-d2bd-412d-b57a-7f0245529bd1)

--> In the ld instruction, once the ALU calculates the address to the memory unit, it also has to write the result to a2 register. For this, the ALU writes the result back to register file whereever the a2 register address is found.

---------------------------------------------------------------------------------------------------------------------------------------------
# W2_SK2_L3 - Basic RISCV - microarchitecture Implementation

There is actually read operation, for which we need to calculate memory address mem(8 + sp)?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/db103e2c-2624-43c5-a86e-f8b5e527065d)

--> The immediate value 8 need not be written to register, it needs to be directly feed to ALU.

--> sp value is a Register value, and it will come from Register file.

--> ALU takes sp value and imm value 8, calculates the new value as an output to data memory, by fetching the address, the data memory gives the value stored in its stack, which will now be written back to destination Register.

--> Now in arthimatic operation, ALU can read 1 or 2 registers, or 1/2 imm value and write it back to reg bank or to the memory itself.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5d8ec2d2-9749-4576-b947-7276c7e8b73d)

In beq instruction, we need to compare some data and see what the flow has to be like explained above in Branch instruction.

Corrected design: Multiplexer needs to be used.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/8caaa660-ccb8-4642-9399-ba21f54799da) 

There is something that is missing still. What is that?

--> Control Unit.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/b58f5a01-17af-448e-93a6-5d69c4a78300)

--> Zero detector from ALU.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/60ad0f0a-0101-4cfa-ae72-62c7e4214f7e)


---------------------------------------------------------------------------------------------------------------------------------------------
# W2_SK2_L4 - Lab Assignment On CPU Performance

Steps to install RISC-V compiler, objdump for dissambler and Spike Simulator to verify output is given here. 

We know how to use RISC-V compiler, dissambler, simulator and also know hoe to calculate CPU performance. 

Perform all above steps for all lab assignments.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/8779a49d-6dd1-40ae-bb09-5817afbca6f4)

