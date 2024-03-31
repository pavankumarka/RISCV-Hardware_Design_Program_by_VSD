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

or 

How shall we calculate CPU Performance?

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

--> User CPU time says the raw time required at the user space defines the CPU performance.   

2. Time required for kernel space process execution time is called **System CPU time.**

--> These metrics are important for understanding the performance and resource utilization of programs and the overall system.

---------------------------------------------------------------------------------------------------------------------------------------





-------------------------------------------------------------------------------------------------------------------------------------

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/1f6f785e-2d70-4be9-8865-f28594a44156)


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/b47e3a8d-e6f6-4517-b55e-0d9028504253)
