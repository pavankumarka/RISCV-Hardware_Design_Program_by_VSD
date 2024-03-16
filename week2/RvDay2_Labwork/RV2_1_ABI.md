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
Eg: Address of 1st double word is m[0]

    Address of 2nd doubleword is m[8]

    Address of 3rd doubleword is m[16]

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7049c8c2-cb0a-457a-b0e8-b9b5eee7674d)

-----------------------------------------------------------------------------------------------------------------

Next questions to explore is,

let us consider, our requirement is to load 3rd doubleword (i.e from m[16] to m[23]into register, how do we do that?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/966a0a96-c32a-4b1e-a79d-c02993b3d2e3)

-----------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------






-------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------
Topic3: Load, Add and Store Instructions with Example
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
Topic4: Concluding 32-registers and their respective ABI Names
-------------------------------------------------------------------------------------------------------------------
