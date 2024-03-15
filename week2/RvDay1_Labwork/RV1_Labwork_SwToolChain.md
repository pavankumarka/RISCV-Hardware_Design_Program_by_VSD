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

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/cc163ca8-8926-4dc6-b3b3-8fba67f3ca8a)

File size differnces are captured here: 

Note: both o1 and ofast type flags enabled output files (*.o) are of same size, but the disassemble files (*.s) have diffence
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7041eb66-0dd3-4b71-a5ba-627b19dbf767)


 


