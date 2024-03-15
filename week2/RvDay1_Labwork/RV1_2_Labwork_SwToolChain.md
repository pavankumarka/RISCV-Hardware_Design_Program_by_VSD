**RV Software Toolchain Labwork**

Agenda:

   1. C-Program to compute sum from 1 to N

   2. RISCV GCC compile and disassamble

   3. Spike simulation and Debug

-----------------------------------------------------------------------------------------------------------------------------------

// C-Program to compute sum from 1 to N.

#include <stdio.h>

int main() {
    
    int sum = 0, N = 5, index;

    for( index = 1; index <= N ; index++ ){
        sum += index;
    }
    
    printf("sum from 1 to %d = %d\n", N, sum);

    return 0;
}

-----------------------------------------------------------------------------------------------------------------------------------
verification Steps: 

1. Dryrun the program: initially sum will be 0 and the index starts from 1.
   
   when index = 1; sum = sum + 1 ; // sum = 0 + 1 => sum = 1

   when index = 2; sum = sum + 2 ; // sum = 1 + 2 => sum = 3

   when index = 3; sum = sum + 3 ; // sum = 3 + 3 => sum = 6

   when index = 4; sum = sum + 4 ; // sum = 6 + 4 => sum = 10

   when index = 5; sum = sum + 5 ; // sum = 10 + 5 => sum = 15

   check if index is greater than 5, if so exit for loop, print sum value and return from main.
   
3. Compile using x86 gcc compiler to obtain error free .exe or .a or .out file to execute and check results

   $gcc sum1toN.c -o sum1toN_x86gcc.out 

   run $./sum1toN_x86gcc.out

   output $Sum from 1 to 5 = 15

   Note: adding a print of sum and index within the for loop will help to checck 

4. Assembler program: $gcc -c -S sum1toN.c -o sum1toN_x86Asm.s

   ---> we will visit this debug type later in the course.

5. gdb debugger: is a x86 gcc supported debugger.

   use below  quickstart commands for using gdb debugger:

   $ gcc -g *.c -o filename_gdb.out  // to compile with gdb support

   $gdb filename_gdb.out            // to start debugging for outputfile 

   $break lineNumber                // add a breakpoint to run linewise debug or skip to run command

   $run                             // to execute instructions

   $step                            // increment or step instructions

   $n or next                       // n or next to increment / step instuctions

   $kill                            // kill the debug at any point or wait for all instructions to complete
    
   $exit                            // exit from gdb debugger

   ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/fdda7a05-a11b-4075-a535-6b7bb742a0f0)

----------------------------------------------------------------------------------------------------------------------------------

To play around with the same problem, we shall increment the N value to 100 and print intermitently,

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/90ad3e17-89f8-41d6-be97-81bf9d3ab4b3)

----------------------------------------------------------------------------------------------------------------------------------
DIfference between "assembly file for c-program without enabling debugger flag" and "assembly file for c-program with debugger flag enabled" is captured below, we can observe that there are more debug information added in each stage which will help to print the intermin result during debug.

Command to generate assembly file without debugger enabled: $gcc -c -S *.c -o *_x86.s

Command to generate assembly file with debugger logs enabled: $gcc -g -c -S *.c -o *_x86_gdb.s

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/ca7cb901-58b9-4566-b3aa-d49afbc382b3)


----------------------------------------------------------------------------------------------------------------------------------
Binary size differences: the binary size increases as the debug logs enabled in assembly and output/exe files, those can be observed below

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c6f3dff8-d04d-46b3-8ff5-1be76053c84a)

----------------------------------------------------------------------------------------------------------------------------------
NOTE: To run *.out files locally, one has to have installed gcc for x86 and RISC-V compiler and debuggers like gdb / spike.
----------------------------------------------------------------------------------------------------------------------------------

 **2. RISCV GCC compile and disassamble**

1. Compile RV gcc for o1 and ofast for the given C-Program, and notedown the differences.
2. Disassemble RV gcc for o1 and ofast for the given C-program, and notedown the differences.

Commands used to compile using RV gcc, disassemble using objdump for RV CPU and pipe them to corresponding file's are shown below:

1. riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o 5_sumOf1ToN_RvO1_gcc.o 0_sumOf1ToN.c
2. riscv64-unknown-elf-objdump -d 5_sumOf1ToN_RvO1_gcc.o > 6_sumOf1ToN_RvO1_obdump.s
3. riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o 7_sumOf1ToN_RvOfast_gcc.o 0_sumOf1ToN.c
4. riscv64-unknown-elf-objdump -d 7_sumOf1ToN_RvOfast_gcc.o > 8_sumOf1ToN_RvOfast_obdump.s

File size differences are captured here: 

Note: both O1 (Uppercase 'O' appeneded with digit '1') and Ofast ('O' appended with 'fast') type flags enabled output files (*.o) are of same size, but the disassemble files (*.s) have difference size

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d2c0096d-afea-4748-abb5-f2a5c53f035f)

---> The number of instructions in -O1 and -Ofast are 26 and 24 respectively.

---> instructions related observations are noted here.
      1. In O1 disassemble, instructions like "li s0,1" is used, where as in Ofast it is "li s0, 2"
      2. In O1 disassemble, instructions like "addiw a5, s0, 1" is used, where as in Ofast it is "addw s1,s1 s0".
      3. in O1 disassemble, could see extra 2 commands marked in red as below.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/0eb82c43-321c-476a-a31f-eb55b7cdc194)

--------------------------------------------------------------------------------------------------------------
 **3. Spike simulation and Debug**

In this section we will explore cross-platform tool for following requirments, 
 1. On x86 machine, how to run programs compiled for RISC-V?

 2. On x86 machine, how to debug programs compiled for RISC-V?

---> The one liner is using **spike tool**, using following linux commands,

$ spike pk *.o     // command used for executing the RV compiled *.exe / *.o file.

$ spike -d pk *.o   // command used for debugging the RV executable (*.o) using spike tool on x86  

Let us execute above commands for "sumOf1ToN_RV_gcc.o" generated for RISCV CPU using riscv64 gcc tool.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/18623935-c04e-484d-a140-637c61f44b59)

The output should remain same for both -O1 and -Ofast, we will deepdive further about them later in the course.

----> Now we know the verification of the RV output file is fine using loader, an our initial dryrun steps or by matching x86 gcc output, we will concentrate next section to debug for RISCV computer. For this,
   1. either we shall use same *.o file to debug.
      or
   3. we can introduce a bug and catch it in debugger, fix it.

For now we will follow 1st step.

1. First we should know the starting address of the main() to debug further.
   This we will learn by visiting *.s (disassemble) file generated using "riscv64 objdump" command.
2. Point the Program counter (PC) to starting address of the main() function.
   ---> :until pc 0 <start_address_of_main>
3. After we know the debug point have reached data objects/variables are declared and defined, we will learn there initial values by printing the register values.
   ---> :reg 0 a2
   ---> :reg 0 sp

4. There are certain registers and values we get when step / increment the instructions, we will see the details in later section of the course.
    ---> At this stage, for understanding purpose, we will introduce and explore what is "lui" instructions we see during debug.

--> What are the contents of lui register ?
   => lui is Load Upper Immediate Register which is 32bit wide. 
   => From LSB, the first 7 bits (0th bit to 6th bit) are opcode
   => from LSB, after opcode, the next 5bits (7th bit to 11th bit) belongs to specify destination register (rd). 
   => After rd bytes, the remaining 20bits (from 12th bit to 31st bit) are data. 
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a53beba4-1b44-4753-bedf-31152521af64)

Eg: from screenshot below, we see 0x00000000**00021000** to be loaded for s3 register using lui instruction.

We will start from LSB to fill lui register, 
   1. 1st value "0" is stored in bits 0 to 3.
   2. 2nd value "0" is stored in bits 4 to 7.
   3. 3rd value "0" is stored in bits 8 to 11.
   4. 4th value "0x00021" is stored in bits 12 to 31.
   5. rest value "0x00000000" is appended because the CPU is 64bit

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/bed320a9-f884-4e21-93d6-62fa4d08ceaa)

4. we will investigate "sp" register value in following section

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/023f1202-0b7d-4962-bd92-1857df705e27)

 ---> Initial instruction is "addi sp, sp, -48".
 
 ---> here with add immediate instruction, sp initial value is added with -48 (0x30) and the result is stored back to sp register. 
 
 val2 = val1 + (-0x30)
 
 0x0000003ffffffb10 = 0x0000003ffffffb40 - 0x30.

addi instruction details are given here 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/edf29934-11c1-4143-a50e-7be673b9e5ed)

We will visit back here with MCQ's from Eximination section to learn explore more about instructions.
-----------------------------------------------------------------------------------------------------------------
