![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/8800ddd9-6838-4f66-8822-8ba3100beac3)

-------------------------------------------------------------------------------------------------------------------------------------

**1. CPU Performance**
-------------------------

we will cover what is CPU performance and how is it measured in this section.

1. What is CPU performance?

--> Computers has execution time and response time (both are differenct) when a program or task is run. Let us explore to understand them.

--> Consider a similar Task (Eg: Task-A) or a process  or a program running on two machines, Computer-A and Computer-B. 

-->Let us consider the execution time of each of the machines as,

    1. Computer-A consumes 25sec.

    2. Computer-B consumes 30sec. 

--> **Performance ratio** = ((Time taken by computer-B) / (Time taken by Computer-A)) = 30sec/25sec = 1.2 units.

=> **Above calculations states that Computer-A is 1.2 times faster than Computer-B.**

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d7eeb479-b659-4bf8-8d7f-ec1021201ee0)

--> we can say CPU Performance time as CPU Execution Time.

To explain further concepts, We will take an example of "entering the input from keyboard to open the http / https of a website and response of the webpage to display on the computer"

1.1 What is CPU Execution time?

--> The Time taken to read data from Memory to CPU + write the CPU output/response back to memory, is CPU execution time.

Eg: if a machine takes 5sec to read data from Memory to CPU + write the CPU output/response back to memory, then CPU execution time is 5sec.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/14ed71a4-c845-4b80-bcc1-b851e7839007)


1.2 What is CPU Execution time comprised of? 

---------------------------------------------

--> There are 2 parts in CPU Execution time,

**A. User CPU Time:** Time taken by the CPU for a program in application space or user-space processes line by line (here the program will be converted into Binary language by the compiler before CPU executes it). 

Eg: 100 lines of Counter.c file program's executable (a.out) will have preprocessor and multiple objects linked in it to execute.
So in simple words we can say that the time taken by the CPU to run application space executable is CPU user time.

-------------------------------------------------------------------------------------------------------------------------------------------------

--> Before we learn what is **"System CPU time"**, let us recall the concepts of what happens in an OS when multiple programs are tried to be executed at same time?

    Eg: What happens by opening 5 different webpages from browser?
    --> The CPU divides its resources (hardware and software) based on time, shifts the execution process based on time required to get response for         individual webpages, and at the end executes all 5 requests to give the result of the 5 different webpages at fractionable difference time.

--> with this basics we shall explore system CPU time.

**B. System CPU Time:** 

-->  System CPU time refers to the amount of time the CPU spends executing operating system kernel code on behalf of processes.

-->  This includes time spent handling system calls, managing hardware, and other kernel-level tasks.

-->  When a program makes a system call (such as reading from the file), the CPU time attributed to system mode includes the time spent in the operating system's kernel to fulfil that request.

--> System CPU time measures how much time the CPU spends on tasks related to managing the system and providing services to user applications.


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a45c0465-5bbf-4beb-a49d-ae663ea06afe)

In above example, 

User CPU time (0.064sec) is less than system CPU time (.372sec), and together form CPU performance time or CPU execution time.

**Conclusion:**

1. Time required for User space process execution time is called **User CPU time.**

--> User CPU time says defines the CPU performance, which can be more or less when compared with other CPU.   

2. Time required for kernel space process execution time is called **System CPU time.**

--> These metrics are important for understanding the performance and resource utilization of programs and the overall system.

---------------------------------------------------------------------------------------------------------------------------------------

**CPU Performance continued ...**

--> A human running race is measured using a stop watch like how fast the human's can reach the finish line from start line.

--> Similarly for a given program, how many **_clock cycles_** are required for execution, gives one of the metric's for CPU performance. 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/102c055e-e0ac-48f5-b47e-b32e50068c73)

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/66101449-49bd-4353-b7ee-2a14c1a34253)

--> A clock cycle is also called as clock period which is smallest unit of the CPU execution time, required to execute an instruction ( based on number of clock cycles).

--> Eg: 1clock cycle = T = 1clock period = 1clock tick = 1ns (nano seconds)

--> Clock rate = 1/T = 1/1ns = 1Ghz = Clock Frequency.

--> Transistor scaling and Microarchitecture definitions are some of the ways to increase CPU performance.

-------------------------------------------------------------------------------------------------------------------------------------

**2. How shall we calculate CPU Performance?**

--> Consider 2 Computers having run same instructions, for example in one Computer the load instruction might takes more clock cycles compared to other computer. This comparison will help to measure CPU performance.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/0a36e0dc-a5c2-4288-ae01-34be8fc04cda)

--> Here in the above picture, there are 3 clock cycles required to run the process on the CPU, the CPU tme is measured as follows,

--> **CPU time** = Number of clock cycles X clock period = 3 x 1ns = 3ns.

or

--> **CPU time** = Number of clock cycles / CLock Frequency = 3 / 1GHz = 3ns.

Eg1: What is the total number of clock cycles required for program to execute in 20sec CPU time?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/ebd29935-8b84-4ca8-8fe3-4e1c6f6b8030)

-------------------------------------------------------------------------------------------------------------------------------------
Eg2: Find the Clock rate of CPU2 with the CPU1 information provided.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d4283e63-f66c-4f0c-b186-74e5328b378a)

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
CPU PERFORMANCE CONTINUED:
-------------------------------------------------------------------------------------------------------------------------------------

We have already went through RISC-V CPU Instructions in our previous classes [here](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/blob/main/week2/RvDay2_Labwork/README.md), now we shall take SWAP function as an example to
understand RISC-V Microarchitecture.

Compare sll vs slli, similarly add with addi, and rest of the instructions which is cirect comparison between RISC-V R vs RISC-V I CPU.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/6beb3340-d9ab-493a-adea-fcb716ad2004)

Task1: What is the clock cycle per instruction in the below CPU information.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/04d02d8d-6d9d-4796-b01c-11dd7e402840)

No. of clock cycle per instruction = average time of all instructions clock cycles.

No. of clock cycle per instruction = (3 + 2 + 3 + 3 + 4 + 4 + 4 + 4 + 2 )/ 9  =  29 /9  = 3.22 Clock Cycles Per instruction (CPI)

CPU clock cycles = 3.22 X 9  = ~29

CPI is important factor to consider while designing CPU.

--------------------------------------------------------------------------------------------------------------------------------------------
CPU SPEED COMPARIOSN EXAMPLE:

Which CPU is faster?

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/94774515-a8d6-425c-9093-1196d215ef8d)

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/05b8a241-5b3f-4006-9c7c-386de22a411a)




-------------------------------------------------------------------------------------------------------------------------------------
SPIKE TOOL:
We shall explore Spike Simulator tool used for RISC-V CPU Compiler.
-------------------------------------------------------------------------------------------------------------------------------------


