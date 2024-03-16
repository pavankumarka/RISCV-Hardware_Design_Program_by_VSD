-------------------------------------------------------------------------------------------------------------------
Application Binary Interface.
-------------------------------------------------------------------------------------------------------------------

        Topic1: Introduction to ABI.
        
        Topic2: Memory Allocation for Double Words
        
        Topic3: Load, Add and Store Instructions with Example

        Topic4: Concluding 32-registers and their respective ABI Names.
        
-------------------------------------------------------------------------------------------------------------------
Topic1: Introduction to ABI.
-------------------------------------------------------------------------------------------------------------------
1. we will start with basic,

   1.1 what is ABI definition?

   1.2 How ABI is important in CPU view?

   1.3 How ABI is important is user / developer perspective?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d42e1c76-f915-4ad5-a7db-d1760bf27c98)

what is interface?
--> it is top level view / appearance / functionality of the feature. Eg: Building, computer

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4e9c5213-742e-4bbc-81d4-51cf94a66eee)

Eg: How does EMail works?
        --> There are multiple intermediate layers for Email software to run on a layout, ABI is one of them. 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4a462f77-d95e-4241-a92f-87094cceaa5e)

-------------------------------------------------------------------------------------------------------------------

What are those intermediate layers? what is functionality of each of those?
        
        Let us consier an Email App developed in C/C++/Java/VB as an example.

1. Application (Eg: Email) ---> via API interface  ----> speaks to Standard Libraries.
2. Std Libs ------------------> uses OS via ISA    ----> to speak to MLP / ALP.
3. ALP  ----------------------> uses RTL via PD    ----> to talk to Layout 

To further get into deeper,

There are ways for Apps to access register on CPU, this is called system calls.
**This is also called Application Binary interface (ABI) or System Call Interface**

There are 2 types of system calls (ISA).

1. User ISA --> apps can directly access registers on CPU.
2. User and System ISA ---> apps can access CPU registers and other hardware resources via OS.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/533ab16f-8ae0-4ffc-886c-cb3369aa517b)

-----------------------------------------------------------------------------------------------------------------

--> If the ABI has to access hardware resources it has to happen via registers.

--> On RV, there are 32 registers, reg length is represented by XLEN.

        1. for 32bit CPU, XLEN = 32.

        2. for 64bit CPU, XLEN = 64.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4c4e6d18-ecfa-4fac-b77a-4dbf988fd061)

-----------------------------------------------------------------------------------------------------------------
Next questions to explore is,

1. Why there are only 32 registers?

2. How ABI accesses Harware resources via registers?

-----------------------------------------------------------------------------------------------------------------

Topic2: Memory Allocation for Double Words
------------------------------------------------------------------------------------------------------------------

--> Our focus is 64bit RV CPU, so we will focus on 64bit wide 32 registers available on RV CPU.

--> XLEN is 64 for 64bit RV CPU.

--> 0bit is LSB to 63bit is MSB

--> the 64bits data is divided into 8bytes of data and stored as below.

--> RV CPU supports little endian memory addressing system

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/159b949b-e7f4-4ff4-b203-02880ba951c6)

-----------------------------------------------------------------------------------------------------------------
--> each byte can store 8bits, 64bits is divided into 8bytes of memory (m0 - m7) for each double word.

--> so address of each double word is after every 64bits or 8byte.
Eg: Address of 1st doubleword is m[0]

    Address of 2nd doubleword is m[8]

    Address of 3rd doubleword is m[16]

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7049c8c2-cb0a-457a-b0e8-b9b5eee7674d)

-----------------------------------------------------------------------------------------------------------------

Next questions to explore is,

let us consider, our requirement is to load 3rd doubleword (i.e from m[16] to m[23]into register, how do we do that?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/966a0a96-c32a-4b1e-a79d-c02993b3d2e3)

------------------------------------------------------------------------------------------------------------------
Topic3: Load, Add and Store Instructions with Example
------------------------------------------------------------------------------------------------------------------
Requirement? A memory is a pool of storage elements, how do we load a specific data to a register?

1. What is the data? ---> Array M of 3 doubleword

2. What is the register name to store the data ?  ---> **x8**

3. where is the data stored? ---> at 16th memory location

4. How to access that memory loacation?  ---> x23 register holds the base address of data **M** . 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/69e84ab0-b17b-4e9c-bfbf-e4afff6248c8)

-----------------------------------------------------------------------------------------------------------------

What is the way to load the data M to x8 register?

Instruction size is 32bits for both 32bit and 64bit CPU.

--> RV CPU supports "load" command.

--> full command : ld x8, 16(rs1).

ld = load doubleword = funct3 + opcode = final keyword(Eg: ld)
x8 = destn register is 5bits, filled as 01000 for x8 reg.
rs1 = source register is 5bit wide = x23 for eg.
x23 = holds 0 intially.
16(x23) = load address of 16 into register x23.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7e7fc97d-b29d-43ba-8d00-33f2f801fb35)


-----------------------------------------------------------------------------------------------------------------
2. Add command:

add rd, rs1, rs2.

Eg: add x8, x24, x8.

opcode + funct3 + funct7 = keyword "add" command.

rd = x8 register = 01000

rs1 = x24 register = 11000

rs2 = x8 register = 01000

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/ff988d19-e896-43d1-857c-bb98d5c0243f)

-----------------------------------------------------------------------------------------------------------------
3. store command:

As registers are less in RV CPU, it is recommended to store the value back in the available memory and reuse the register for other purpose. else there are chances of overwriting the register values / losing data.
So parallely load and store operations to be performed.

Command: sd  rs2,imm(rs1)

sd = opcode + funct3

imm = ({imm[11:5] , imm[4:0]}) = offset of memory location.

rs1 = source register = x23 = 11000

rs2 = destination or store register = 01000

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f9a45478-19ee-49dc-8f34-7a8ea06071f0)

-------------------------------------------------------------------------------------------------------------------
Topic4: Concluding 32-registers and their respective ABI Names
-------------------------------------------------------------------------------------------------------------------

1. ld, add, sd are part of RV64I instructions, which are also called as Base Integer Instructions.

   There are total 47 base integer instructions.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c52b4e58-066e-43e7-a751-26a0ce3f8cc6)


2. instructions which work only on registers are called R-type instructions

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/15c118f4-f505-4026-9b42-753c69bc2b12)

3. Instructions which work on 2 registers and immediate offset type data are called I-type instructions

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/dea1aee9-6146-411e-86f7-87f45a2e5b14)

4. Instructions which work on storing are S-type instructions

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/824080d3-be20-4d8c-be81-4d1d91a78d12)

5. So, why only 32 registers in RV CPU?

- all registers in the commans if we see closely there are of 5bits.

- So max supported registers are 2^5 = 32 registers.

- So the registers available are x0 to x31.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/307ebccc-6ff1-4cf5-933e-ef8467d2f9f5)

6. What are those 32 registers?

- X0 reg has zero as abi name
- X2 has sp (stack pointer ) as abi.
- X28-31 are temporary register.


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/fa76002c-fe67-4ba8-9732-cff8b057a8b2)

To conclude, this is how ABI access the specific internal hardware resources of RV CPU using the corresponding ABI names. 
-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
