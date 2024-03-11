**RISC-V Hardware Design Program by VSD**

**Program Overview:** The "RISC-V Hardware Design Program" or "Product Based RISC-V Skilling Program" is a Six weeks of practical/lab 
oriented workshop course, for Hardware-Software Co-simulation focused product design enthusiast's, taught by VSD Team.

Link: https://www.vlsisystemdesign.com/hdp_riscv/ 


**Instructors:**

1. Mayank Kabra
2. Kunal Ghosh




**Opensource Tools:** (Preinstalled VDI image provided by VSD team has following tools)

1. gcc compiler.
2. iVerilog.
3. gtkwave.
4. SPICE Framework.
5. RISC-V Compiler.
6. list to grow further...
   

**Steps followed:**
1. Design and build software Application targetting end hardware architecture.
2. Convert application Design Input/output with software and Hardware co-simulation mindset.
3. Convert App design to State Machine.
4. Write C-Program (or any High-level language) for the application (Embedded app).
5. Verify C-code using compiler for RISC-V using Godbolt.org online compiler.
6. Dump the compiled code into RISC-V for pre-silicon verification on ChipCron tool.
7. Define GPIO registers.
8. Convert C to verilog for Device Uner Test (DUT)- plan HDL design and verification.
9. Write test bench for DUT via simulation.
10. RTL design covers Pre-synthesis (Skywaters by google) and Post-Synthesis.

**Workshop agenda for Six weeks:**

week0: https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/tree/main/week0  

  Task1:

    0.1.1 Build HDP program required offline lab setup by installing ubuntu as a Virtual Machine 
    on Windows 11 OS - for 64bit_x86 based CPU system.

    0.1.2 Create github account and capture VSD-HDP course highlights, and agenda in week1 to week6.

week1: https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/tree/main/week1

  Task1: 
  
  List Assembly Language observations for AVR(Arduino), RISC-V and x86 processors using following modules.  

    1.1.1 Design 4bit counter on Godbolt tool (Godbolt tool link: https://godbolt.org/)

    1.1.2 Design Matrix Multiplication on Godbolt tool.


  Task2:

    1.2.1 Calculate 1's and 2's compliment for signed numbers (3 problems to be solved in 2 varients).

    1.2.2 Design ALU (Arthimetic and Logic Unit) using C-code and verify it using **gcc compiler**.

    1.2.3 Design ALU using verilog and verify using iVerilog and gtkwave.


week2:

week3:

week4:

week5:

week6:


**HDP Program Summary:** At the end of the program, one should be able to Design and build Application software which can be compiled for RISC-V hardware architecture, and simulate same using Hardware Description language and write test-benches on opensource tools installed in Linux machine.
 
