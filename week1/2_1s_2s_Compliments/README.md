**Arithmetic Subtraction and addition for signed numbers:**

1. Arithmetic Subtraction using 1's compliment for signed Numbers:
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4516c115-4c03-4bfe-bad9-6507ae5b5aaa)

Case1.1: Result if positive during 1's compliment Arithmetic Subtraction:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/118f01a1-8c0e-43b1-aa46-368d03093d77)

Case1.2: Result if Negative during 1's compliment Arithmetic Subtraction: 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d07eaa7a-99e6-49ee-9b29-f7085a386f86)


2. Arithmentic subraction using 2's compliment for signed numbers:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/155e8300-df26-4aee-88a4-8686895dbf1b)

Case2.1: Result if positive (Pure Binary form) during 2's compliment Arithmetic Subtraction:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/505a3019-f9ef-4f7d-9a63-d52a9d193eb6)

Case2.2: Result if Negative during 1's compliment Arithmetic Subtraction:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/41dd41d1-236d-4678-9977-a426f17ca85b)

------------------------------------------------------------------------------------------------------------------------------------------
Calculate 1's and 2's compliment using signed number representation for these, 
       
       1) 10 - 19        
       2) 36 - 12       
       3) 20 + 30 
       
------------------------------------------------------------------------------
**1. 10 - 19**

**1.1) calculate (10 - 19) using 1s compliment.**

   Arithmetic Subtraction using 1's compliment
     +10 --->    0000 1010
     -19 ---> (-)0001 0011  ---1's compliment of +19 -->   1110 1100
   
   -----------------------------------
     +10    --->  0000 1010
     
     +(-19) --->  1110 1100
       
     -----------------------
     result --->  1111 0110   ( result of (+10) + (-19's 1s compliment))
     -----------------------
     As MSB is 1 in the result (11110110), the result needs to be 1's complimented,
     and for decimal representation add -ve sign as prefix.
   
     --> 1's compliment of (1111 0110) = 0000 1001 in binary = 9 in decimal = -9 in decimal as MSB is 1.
   
     => 10 - 19 = -9 in decimal.
     
     Note: As the result's MSB bit is 1, the result of 1's compliment form will be converted by negating.

------------------------------------------------------------------------------

------------------------------------------------------------------------------
**1.2) calculate (10 - 19) using 2s compliment.**

   Arithmetic Subtraction using 2's compliment
     +10 --->    0000 1010
     -19 ---> (-)0001 0011  ---2's compliment of +19 -->   1110 1100
                                                                  +1
                                                           ----------
                                                            1110 1101                          
   
   -----------------------------------
     +10    --->   0000 1010
     
     +(-19) --->   1110 1101
       
     -----------------------
     result --->   1111 0111   ( result of (+10) + (-19's 2s compliment))
     -----------------------
     As MSB is 1 in the result (11110111), the result needs to be 2's complimented,
     and for decimal representation add -ve sign as prefix.
   
     --> 2's compliment of (1111 0111) = 0000 1000 + 1 = 0000 1001 in binary = 9 in decimal = -9 in decimal as MSB is 1.
   
     => 10 - 19 = -9 in decimal.
     
     Note: As the result's MSB bit is 1, the result of 2's compliment form will be converted by nagating the result and adding 1 as above.

------------------------------------------------------------------------------

------------------------------------------------------------------------------
**2) 36 - 12**

**2.1) calculate (36 - 12) using 1s compliment.**

   Arithmetic Subtraction using 1's compliment
     
     +36 --->    0010 0100
     -12 ---> (-)0000 1100  ---1's compliment of +12 -->   1111 0011
   
   -----------------------------------
     +36    --->   0010 0100
     
     +(-12) --->   1111 0011
                   ||          (note carry bits here) 
     -----------------------
     result --->(1)0001 0111 ( result of (+36) + (-12's 1s compliment))
     -----------------------
     As MSB/carrybit is 1 in the result (1 0001 0111), the carrybit/MSB bit needs to be added back from LSB bit side in 1's compliment,
   
     --> the carrybit/MSB bit when added back to (0001 0111) = (0001 0111) + 1  = 0001 1000 in binary = 24 in decimal.
   
     => 36 - 12 = 24 in decimal.

------------------------------------------------------------------------------

------------------------------------------------------------------------------
**2.2) calculate (36 - 12) using 2s compliment.**

   Arithmetic Subtraction using 2's compliment
     
     +36 --->    0010 0100
     -12 ---> (-)0000 1100  --- 2's compliment of +12 -->   1111 0011
                                                                   +1
                                                            ----------
                                                            1111 0100
   
   -----------------------------------
     +36    --->   0010 0100
     
     +(-12) --->   1111 0100
                   ||          (note carry bits here) 
     -----------------------
     result --->(1)0001 1000 ( result of (+36) + (-12's 2s compliment))
     -----------------------
     As MSB/carrybit is 1 in the result (1 0001 1000), the carrybit/MSB bit needs to be ignored.
   
     --> the carrybit/MSB bit when ignored (1 0001 1000) = 0001 1000 in binary = 24 in decimal.
   
     => 36 - 12 = 24 in decimal.

------------------------------------------------------------------------------
Arithmetic addition
-------------------

**1. Arithmetic addition using 1's compliment:**

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/e65ab99c-8451-4479-a6e4-322c5b957322)


**2. Arithmetic addition using 2's compliment:**

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/cf4734c3-fa41-4936-b71c-eccc9200d57c)

-----------------------------------------------------------------------------------------------------------------------------------------------
**3) 20 + 30**
   
**3.1 Arithmetic addition using 1's compliment**
        
        +20 --->    0001 0100
        +30 --->    0001 1110 
        
      -----------------------------------
        +50    ---> 0011 0010
        
        -----------------------
        result ---> 0011 0010 ( result of (+20) + (+30) 1s compliment))
        -----------------------
      
        => 20 + 30 = 50 in decimal.

------------------------------------------------------------------------------

**3.2 Arithmetic addition using 2's compliment**
        
        +20 --->    0001 0100
        +30 --->    0001 1110 
        
      -----------------------------------
        +50    ---> 0011 0010
        
        -----------------------
        result ---> 0011 0010 ( result of (+20) + (+30) 2s compliment))
        -----------------------
      
        => 20 + 30 = 50 in decimal.


Pictures credits along with VSD: [youtube](https://www.youtube.com/watch?v=HnDWWNXSMd0&list=PL4lHevQbRIlkxpW4YNDPGlD29hZOaUBgl&index=9)

-----------------------------------------------------------------------------------------------------------------------
