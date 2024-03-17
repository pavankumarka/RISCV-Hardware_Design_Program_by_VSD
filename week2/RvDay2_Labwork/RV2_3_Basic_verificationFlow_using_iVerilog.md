VERY VERY IMPORTANT PART OF THIS COURSE:

Basic Verification Flow using iVerilog.
-------------------------------------------------------------------------------------------------------------------
1. Let us say we have a Verilog written RTL.
2. Also let us say we have a C-program written and converted into Hex file.
3. Next our requirment is to explore how we load the C-program compiled Hex file, and load it into RTL of RISC-V CPU and obtain the result.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/1fb5321e-2df7-456d-be7b-5b6fd40442f9)

------------------------------------------------------------------------------------------------------------------
Link / git command to clone RTL required tools: 

$git clone https://github.com/kunalg123/riscv_workshop_collaterals.git  

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4e370adf-cd21-4a2d-94dc-d29d5d8e7909)

--> With above link we shall clone the tools and ensure the required files such as RTL for picorv core, its testbench,  a shell script which automats following,

  1. compile C-Code for RISC-V RTL and convert it into hex file which will loaded as a memory/firmware file to RTL.

  2. Compile RTL (.v)file using iVerilog and use it as UUT for the testbench written in verilog snd compiled using iVerilog.
  
  3. During verification we can see the output of the C-program using the automation script which runs C-code as an hex/memory file on picorv RTL core.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f33f88e8-67ba-4638-bdef-4da769704970)


RESULT:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c5fded5c-3d93-4054-a6b5-1fac8a699b02)

-------------------------------------------------------------------------------------------------------------------------

To conclude,

The firmware.hex file is generated after running the ./rv32im.sh file like this,

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f076c295-ea2b-406f-910d-329541fcc35f)

The same file rv32im.sh file reads hex file (a c-program compiled for RISCV core ) is read like below inside testbench.v file,

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/eb2c8f36-26f9-415f-8c8e-427a270ffe9a)



