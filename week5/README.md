command to generate RISC-V CPU 64bit exe file:
-----------------------------------------------
Enable library files and required debug flags in trainDir.c file before executing below command

$ riscv64-unknown-elf-gcc -march=rv64i -mabi=lp64 -o trainDir.out trainDir.c

$ spike pk 0_trainDir.out

Output of 64bit exe file on 64bit Linux CPU:
---------------------------------------------

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/b815c25e-98a3-4ff4-abe1-f06aaea58016)

Command to generate RISV-V CPU 32bit exe file used to run FPGA type simulation: 
(note in c program if required, replace main() with _start()), this will resolve warning of _start() not found.
--------------------------------------------------------------------------------------------------------------

riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -ffreestanding -nostdlib -o trainDir.out trainDir.c

Command to obtain disassembly code from RISC-V CPU EXE
--------------------------------------------------------
riscv64-unknown-elf-obdump -d -r trainDir.out trainDir.txt

Find Unique instructions: (Ensure Python or python3 is installed, execute "$python3 script.py)
------------------------------------------------------------------------------------------------
eit script.py file to rename the filename as trainDir.txt and pipe the output to trainDir.uniqInstn

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d04c0084-af83-43d1-9fc5-772d23218f8a)

In all_original.json file, enable (make instructions as true from false state) instructions based on the output of script.py.

Ensure to use translations of instructions in all.son file  
1. li, mv = ADDI
2. j, ret = JAL
3. beqz = beq
4. bnez = bne
5. neg = sub
6. snez = sltu

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4b540830-d6a6-4235-9a7f-7e2950d11832)


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/8d791610-afc8-4796-ac91-5a0861fc2a29)

Tool to upload json file and assembly file to download processor.v and testbench.v
----------------------------------------------------------------------------------

![trainFiles_upload_chipcron](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4ab1693e-5f06-4d57-a5a9-49f85a85641f)


Edit processor.v and testbench.v files
----------------------------------------

In processor.v file, update IO pins matching x30 register at,

1. begging of the Wrapper module
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/429ee429-9382-4062-adc0-13c8768fb556)

2. output pins:
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/41f23874-f937-482b-b1c7-d7b0931a0caa)

In testbench.v file, update IO pins as below,

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/8f94a8ea-c653-4348-9580-9510b447af8c)

testcase:
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/83cad6fb-8e1c-45cf-b2cc-dbeda008ce49)


Run iVerilog command for simulating the FPGA type code verification for the updated processor.v and testbench.v files. 
------------------------------------------------------------------------------------------------------------------------

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/580a158a-372e-4400-9119-4e6dab9ea944)




