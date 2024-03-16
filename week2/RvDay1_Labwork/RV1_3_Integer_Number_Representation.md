**Integer number representation**

Agenda:

    Topic1: 64bit Number system for unsigned Numbers.
    Topic2: 64bit Number system for signed Numbers.
    Topic3: Lab for Signed and unsigned numbers.

------------------------------------------------------------------------------------------------------------------
Topic1: 64bit Number system for unsigned Numbers.
------------------------------------------------------------------------------------------------------------------
On a 64bit CPU, the unsigned numbers are arranged as shown below, for RISC-V architecture we need to introduce few terms which we will explore here.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f60d8b05-b72a-45de-b306-8c8a096733e5)

1. 64bit number is called **Double word**
2. 32bit number is called **word**
3. 8bits form a byte
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/cab8d064-b279-4205-a538-272a3d7aec0d)

--> As we are dealing with 64bit RV CPU, let us explore what is the max number we can store.

1. If the CPU would have been 2bit or 3bit or 4bit, the max number that we would have stored is 3, 7 and 15 respectively.
   
2. Similary for 64 bit, it is ((2^64) -1) = (17,446,744,073,708,551,615)dec

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c5cea0e0-1379-43b3-8430-70b5447f2116)

3. what is the value of each bit to get (17,446,744,073,708,551,615)dec, is explained below. 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/16824dd9-383d-4b6a-b1f4-9e2c368a787b)

---> on RV, if there is 2 big numbers addition, the max value that be stored is (18,446,744,073,709,551,615)dec.
---> If it exceeds beyond, there is a bit set, that bit is called "Overflow flag".

4. to conclude, max unsigned number that can be represented/stored on a 64bit RV CPU is (17,446,744,073,708,551,615)dec

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/c205ed3d-e2d1-4598-8d4a-c088ca23d5ad)

In next section we will explore how to represent / store negative numbers?

------------------------------------------------------------------------------------------------------------------
Topic2: 64bit Number system for signed Numbers.
------------------------------------------------------------------------------------------------------------------
1. A Positive and negative number represantation on a 64bit RV CPU as below shown in picture.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7cade904-e375-4900-adf1-09450b0bb019)

2. Another easy example would be storing +2 and -2,

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/11efff5d-c117-470e-b98e-e3d87978a050)

3. A +ve number MSB is 0 and for -ve number MSB is 1.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f621700d-36dd-43d3-9de6-fb946a881701)

4. To find decimal equivalent,

   4.1 For Positive number, i.e MSB bit will be 0, for MSB bit multiply by (+2^64)

   4.2 For negative number, i.e MSB will be 1, for MSB bit multiply by (-2^63)

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/7f184c57-da2a-465e-a676-520c4478e9cb)

6. Another way to quickly find the -ve number is finding its 2's compliment and add -ve sign at MSB side.
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/f01d0d11-3830-4f58-ad29-d10fae9247e8)

7. To find the min an max range of positive numbers stored in signe number representation would be, we will have to follow the step of keeping the MSB bit as the place holder for sign bit in case of signed numbers. so the max bits we can use is 63bits to represent a number, keeping MSB bit, the 64th bit for signed number representation.
   
   ---> so min number would be (0|all 0's)bin = (0)dec.

   ---> and max number would be (0| all 1's)bin = (9,223,372,036,854,775,807)dec. = ((2^63)-1)

 ![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/68e5320a-3203-4064-b7ed-1a974cdc8ab4)

7. For Negative numbers range, (-1) to (-2^63)bin = (-9,223,372,036,854,775,808)dec.

Now compare +ve and -ve number using Least Significant byte.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/e543a433-9e4f-4c4a-9c30-741f4085069f)

8. To conclude with, the signed and unsigned number support following the rules and limits are called RV64I, in other words, RV supports Base Integer Instructions.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/878d6ac4-3014-4ec9-9e79-1bb7b9dc9f22)

------------------------------------------------------------------------------------------------------------------
Topic3: Lab for Signed and unsigned numbers.
------------------------------------------------------------------------------------------------------------------
1. Unsigned Min - Max support on RV CPU. 

---> To cover max number support on RV architecture, use "unsigned long long int".

---> the range we saw +ve numbers is 0 to ((2^64)-1), we will try to print the same using C-program.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/461464ef-9afc-4d86-8a40-83151fa2cd42)

Note: To avoid warning or malfunctioning on hardware, it is better practice to include type conversion 

Eg: "result = (pow(2,64)-1);" gives warning when compiled without typecasting.
    "result = (unsigned long long int)(pow(2,64)-1);" compiles smooth.

2. Even by increasing the power greater than 64, the RV arch can max allocate ((2^64)-1).
   By Reducing the power value less than 64, the RV supports the value as it is within range of ((2^64)-1).

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/0bb95bd9-06b8-4849-858c-88e404a52e21)

3. The minimum number supported by RISCV architecture is **0**. 

We will try to multiply by (-1) and check the result.

Theoritically it is 0. i.e the min number, an unsigned long long int type variable can support.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/bc8afd98-0289-4b50-9181-8f2e8b4c1bb0)

4. Representing Negative numbers in RISCV CPU.

---> use signed numbers. An example is shown in picture below:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a1697a8e-b0bc-48d1-82e7-723f87a6f0d4)

5. Representing Min and Max supported signed type numbers in RISCV CPU.

--> Min signed number = -(2^63); //(-9,223,372,036,854,775,808)dec.

--> Max signed number = (2^63);  //(9,223,372,036,854,775,807)dec.

NOTE: for RV CPU arctitecture to understand the signed numbers, it is better to typecast the required type, else compiler will allocate default datatype to its corresponding datatype's.


6. Interger Datatypes supported on RV CPU and size of each of those are explained here.

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/a8ee25a4-6990-4256-ae14-0ddc232f785e)


![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/dad9fccd-cb5f-453a-b264-9dd3cb0d6100)
