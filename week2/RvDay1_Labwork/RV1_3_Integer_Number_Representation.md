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


------------------------------------------------------------------------------------------------------------------
Topic3: Lab for Signed and unsigned numbers.
------------------------------------------------------------------------------------------------------------------

