**ALU**

An ALU is Arithematic and Logic Unit, usually used as a module in CPU design. ALU has 3 parts:

1. Maths and Logic Unit

2. Control Unit

3. Registers

  

A Simple ALU's Mathematical and Logic unit State Machine like design is described and implemented here:

Refer PICTURE 1 to 3 below for Design Requirement which are self explainatory and the output screenshots in later screenshots.

C-program for ALU design requirement is captured in alu.c file 

    1. alu.s is the assembly code for alu.c c-program, that is compiled in local Linux computer  

    2. gotbold_alu_gcc.s is the assembly code for alu, compiled using GOTBOLT COMPILER by selecting x86_64 gcc 13.2.

**PICTURE1: ALU Design Requirement:**
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/ccdf8cc3-ef27-4540-8c8b-2be72352ff45)

**PICTURE2: Run program without giving input from Command Line Argument** **(Accepts Hex values 0x00 to 0x0F)**
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/326ac0f7-928d-4b1d-baf9-2bdd373d259d)

**PICTURE3: Input feed from Command Line Argument** **(Accepts Hex values 1 to 12 )**
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/df95b6a5-3d10-4c8e-904e-9f69b1f80ad7)

**PICTURE4: ASSEMBLY code from Gotbold compiler** 
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4c9a8789-82db-4b4a-8eeb-ea319f5346ea)
