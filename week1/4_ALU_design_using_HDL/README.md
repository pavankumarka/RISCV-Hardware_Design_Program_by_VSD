****ALU****

**ALU Definition**
An ALU is Arithematic and Logic Unit, usually used as a module in CPU design. ALU has 3 parts:

  1. Mathematical and Logic Unit

  2. Control Unit

  3. Registers

A Simple "Mathematical and Logic" unit of ALU's State Machine like design is described here, implemented using verilog, verified using iverilog compiler, and test bench is written for the same design and simulated using gtkwave tool. Corresponding pictures are added below. The output value "aluOut" is a 8bit register, that holds ASCII equivalent HEX value assigned to inputs, based on select lines, the output value is updated. 

**Arithematic and Logic Design**

![4x1_Mux](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/26bd0c2e-1aac-464b-a8df-07f4d6dc5d3f)

**Verilog and Testbench code for ALU's Arithematic unit**

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f84d634b-5597-4b12-8fa9-bcfab9a25645)


**Output Waveform using GTKWave Tool:**

Waveform shows HEX values in the "aluOut" wave.

Terminal shows decimal values for the output "aluOut".

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c0f46861-5578-47a3-ac95-0092e8182d4d)


**Issues faced during design**
1. case/switch condition issue. In Verilog code, initial design was written "case (sel0 | sel1)", this never met last 2 conditions though there is place holder in case. "case({sel0,sel1})" was fix provided by instructor to overcome the issue.
