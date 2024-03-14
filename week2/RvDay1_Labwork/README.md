**RV Day 1 - Introduction to RISC-V Instruction Set Architecture and GNU compiler toolchain**

    Chapter1: Introduction to RISC-V Keywords
            Topic1: Introduction to RISC-V ISA
            Topic2: From apps to Hardware
            Topic3: Detail description of course content

    Chapter2: Labwork for RISC-V software toolchain

    Chapter3: Integer number representation.

---------------------------------------------------------------------------------------------------------------------------------

**Chapter1: Introduction to RISC-V Keywords**

Topic1: Introduction to RISC-V ISA

Top Level description for RISC-V ISA: 
    It is abbrevated form of Reduced Instruction Set Computer for type V(Roman 5) Instruction Set Architecture, is the language of the computer or the way we talk to computers.

Further step down to learn RISC-V ISA: 


To run a simple C or any anyother high-level language like C++/Java on a hardware layout (let us say our laptop CPU/chipset), there are certain steps to be followed:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3bb2fb78-cabc-4329-8e9b-1fc809a84e94)


  1. First the C-program is compiled (using a compiler installed on the Operation System (OS)) into assembly language program (ALP)
  
          Eg.: 1. If the target machine is x86_64bit (Intel / AMD) CPU laptop, the x86_64 bit ALP is generated.

          Eg.: 2. If the target machine is RISC-V computer, RISC-V supported ALP is generated.

  2. ALP is converted into machine language program (MLP) or Binary language Program. It is basically 0's and 1's, which is nothing but electronic signals such as Logic High and Logic Low. For human readable format support requirement, it is displayed in Hexadecimal format.

         Eg: 32'b01000010000011111000001010101011 or 64'b100011000.....11 based on arch.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4a3dfe8f-0009-4a0d-bf61-da1d934849ed)

  3. These Hex/Binary/MLP is executed on Hardware/Layout to get required output. There is another interface that needs to be present between RISC-V architecture and Layout, i.e nothing but Hardware Description Language (HDL), supporting the base architecture. Requirement is to implement the MLP's RISC-V specifications into some RTL.
     
     Eg.: Picorv32 cpu, esp32 cpu ect.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/43322629-cd1f-40bd-be50-617e0b7fd761)

  4. Final stage is RTL to Layout / RTL to PNR/GDSII following CPU architecture specification. 


To summerize in-Short, What is RISC-V ISA? 
    
    C-Program ----> Assembly Language Program ----> Binary Language Program ----> HDL using RTL specification ---> Layout / PNR.

-----------------------------------------------------------------------------------------------------------------------------------

Topic2: From apps to Hardware

1. There are multiple apps which we use in our day to day life whic runs on a hardware / compputer Chip, how does it all happen?
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/fe481684-b10e-4ca7-9dc4-c5133c5bddfb)

--> ISA tries to answers this question. 

--> Application software enters into a system called System software. The System software intern converts application into Binary langauage.
        There are varies levels of system software,

        1. Operation System (OS)
        
        2. Compiler
        
        3. Assembler

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a72389f7-1eed-4dbf-bd08-8c7675ce427c)

--> What does Operation System (OS) do? 
        It handles I/O operations, allocates memory, low level system functions, like converts app into ALP and BLP/MLP later. 

--> How does OS work?
        1. OS takes apps written in high level language and converts into small functions in C, Cpp, Java, VB.
        2. It takes these small functions as inputs into Compiler and converts into instructions in a output file called *.exe.
        The syntax of the instructions follows or depends upon core/hardware.
        
        Eg: if hardware is Intel x86, the instrn set follows intel x86 syntax, similarly for MIPS, ARM, RISC-V and so on.
        
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/73ede33e-a822-4709-a6f3-0f0ba81a28ab)

        3. Next step is to take these instruction set file or exe file and convert it into ALP/MLP. This is done by Assembler.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/b4e2e348-031c-45a3-897c-b949ee3470a1)

        4. These ALP patterns are sequentially feed to hardware to get the response from hardware/chipset. 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/9f8823a6-1fa0-4788-bc33-f8af7e66ad9e)

Example: Stopwatch on a RISC-V computer:

1. First the Stopwatch app code is converted into smaller C like high level language 

2. Using Compiler, the C like high level language is converted into RISC-V Instructions in a exe file.

3. This *.exe file is taken into Assembler and converted into Machine / Assembly Language Program.

4. The ALP is feed to RISC-V computer for corresponding output.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4994d1c6-85d8-4e48-bbc0-7bbad6d91e64)


--------------------------------------------------------------------------------------------------------------------------------
Next step is to get deeper into ISA functionality:  

**NOTE: FOCUS More HERE ---> this is the core of this course.**

1. i.e what happens in the instruction set after converting the C-code into Instruction set?
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/08161559-6cee-497e-9212-90a6f74bac07)

----> we will get deep into instruction set from here after. The instruction set acts like a abstract layer or interface between the c-program and the hardware.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5f479985-7646-4df9-9173-114e441816a3)










        






