**RV Day 1 - Introduction to RISC-V Instruction Set Architecture and GNU compiler toolchain**

    Chapter1: Introduction to RISC-V Keywords

    Chapter2: Labwork for RISC-V software toolchain

    Chapter3: Integer number representation.

---------------------------------------------------------------------------------------------------------------------------------

**Chapter1: Introduction to RISC-V Keywords**

Top Level description for RISC-V ISA: 
    It is abbrevated form of Reduced Instruction Set Computer for type V(Roman 5) Instruction Set Architecture, is the language of the computer or the way we talk to computers.


Deepdive to RISC-V ISA: 

In-Short:
    
    C-Program ----> Assembly Language Program ----> Binary Language Program ----> HDL using RTL specification ---> Layout / PNR.


To run a simple C or any anyother high-level language like C++/Java on a hardware layout (let us say our laptop CPU/chipset), there are certain steps followed:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/3bb2fb78-cabc-4329-8e9b-1fc809a84e94)


  1. First the C-program is compiled (using a compiler installed on the Operation System (OS)) into assembly language program (ALP)
     Eg.: 1. If the target machine is x86_64bit (Intel / AMD) CPU laptop, the x86_64 bit ALP is generated.
     Eg.: 2. If the target machine is RISC-V computer, RISC-V supported ALP is generated.

  2. ALP is converted into machine language program (MLP). It is basically 0's and 1's but for human readable format support requirement, it is displayed in Hexadecimal format. Eg: 32'b01000010000011111000001010101011 or 64'b100011000.....11 based on arch.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4a3dfe8f-0009-4a0d-bf61-da1d934849ed)

  3. These Hex/Binary/MLP is executed on Hardware/Layout.

  4. There is another interface that needs to be present between MLP and Layout, i.e nothing but Hardware Description Language (HDL), supporting the base architecture. Requirement is to implement the MLP's RISC-V specifications into some RTL.
     Eg.: Picorv32 cpu, esp32 cpu ect.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/43322629-cd1f-40bd-be50-617e0b7fd761)

  5. Final stage is RTL to Layout / RTL to PNR/GDSII following CPU architecture specification. 

-----------------------------------------------------------------------------------------------------------------------------------
     

