------------------------------------------------------------------------------------------------------------------
Labwork using ABI function calls.
------------------------------------------------------------------------------------------------------------------
Agenda:

    Topic1: Study New Algorithm for Sum 1to N using ASM

    Topic2: Review ASM function call

    Topic3: Simulate New C Program with Function Call
------------------------------------------------------------------------------------------------------------------
Topic1: Study New Algorithm for Sum 1to N using ASM
------------------------------------------------------------------------------------------------------------------
1. Using Sum of 1 to N C-Program, will explore the power of ABI

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/eaaf6763-bc07-4d15-8bb8-7e0d9b91888a)

2. Assembly level language Logic to Add 0 to N.

--> a0 to a7 registers can be used.

--> From main, call the function.

--> pass a0 = 0 and a1 = 10 to the function to START execution.

--> initialize a4 with "zero", an application binary interface. 

--> initialize a3 with "zero", an abi.

--> store 10 in a2

--> add a4 + a3 and store back results in a4.
    $ a4 = a4 + a3;

--> increment a3
    $ a3 = a3 + 1;

--> check if a3 < a2 ?
    if so go back to a4 = a4 + a3;

--> if a3 >= a2, exit loop.

--> to store a4 value in a0, there are multiple ways, we will use
    $ a0 = a4 + zero.

--> return to main().

--> end the process.


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/01f93ec8-86d3-4db7-b735-fbeaa41c5c9f)


------------------------------------------------------------------------------------------------------------------
Topic2: Review ASM function call
------------------------------------------------------------------------------------------------------------------
Let us prepare the c-program an assembly language in this section and see the simulation in next section.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/65cceaf3-bee6-4781-9721-fa0278a4961f)

------------------------------------------------------------------------------------------------------------------
Topic3: Simulate New C Program with Function Call
------------------------------------------------------------------------------------------------------------------
by using RISC-V compiler and spike obdump for RV comipled out, we shall see the simulations.

Sum of 1 to 9 is 45.
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/6fefafe5-71fb-4b0c-8a25-7fe0779b6436)


we will see the objdump code here.

-> observe the registers, loop and logic used in load.S file is same as in spike created objdump file in main and load functions.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4e833245-e003-407b-9cf4-be011531da8f)

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
