Command to generate RISV-V CPU exe file
-----------------------------------------
riscv64-unknown-elf-gcc -Ofast -march=rv32i -mabi=ilp32 -ffreestanding -nostdlib -o 0_trainDir.out 0_trainDir.c

Command to obtain disassembly code from RISC-V CPU EXE
--------------------------------------------------------
riscv64-unknown-elf-obdump -d 0_trainDir.out 0_trainDir.txt

Find Unique instructions: (Ensure Python or python3 is installed, execute "$python3 script.py)
--------------------------
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d04c0084-af83-43d1-9fc5-772d23218f8a)


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




