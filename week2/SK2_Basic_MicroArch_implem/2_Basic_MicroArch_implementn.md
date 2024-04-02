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

To Conclude:

1. PC contains the address of the current instruction.

2. Every instruction reads one or two registers, and writes the new values back to one register at least.

3.  In hardware terminology to expalin, let us consider PC as a register, and it is a Flip-Flop in hardware world, where size can be defined.

  Let us say it is 32bit register, it can hold 4Bytes data.

4. Instruction memory or the code memory is of Static-RAM (SRAM) model.

---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

# W2_SK2_L2 - Introduction To Register File And Data Memory

---------------------------------------------------------------------

--> Instructions are compraised of registers and immediate values.

--> RISC-V 32R or 64R, meaning Registers supported RISC-V ISA for 32bit and/or 64bit CPU. In either bit architecture, there are only 32 number of registers supported. (2^5 = 32 i.e from 0to31)

--> Instructions uses Registers for multiple math an logic operations. These registers are sort of values stored in a memory called Register Bank. These memories locations in the Register Bank have addresses. Whenever a register is called, actually we will refer to either address or values in that specific address of a register Bank.

--> 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5431a073-f979-4a33-93b5-9bf9fa114f51)
