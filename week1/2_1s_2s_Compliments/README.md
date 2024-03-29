**Arithematic Subtraction and addition for signed numbers:**

1. Arithematic Subtraction using 1's compliment for signed Numbers:
   
![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/4516c115-4c03-4bfe-bad9-6507ae5b5aaa)

Case1.1: Result is positive:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/118f01a1-8c0e-43b1-aa46-368d03093d77)

Case1.2: Result is Negative: 

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/d07eaa7a-99e6-49ee-9b29-f7085a386f86)


2. Arithmentic subraction using 2's compliment for signed numbers:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/155e8300-df26-4aee-88a4-8686895dbf1b)

Case2.1: Result is positive:



Case1.2: Result is Negative:



------------------------------------------------------------------------------------------------------------------------------------------
Calculate 1's and 2's compliment using signed number representation for these, 
    1) 10 - 19        
    2) 20 + 30        
    3) 36 + 12
    
------------------------------------------------------------------------------
1) 10 - 19

Arithematic Subtraction using 1's compliment
  +10 --->    00001010
  -19 ---> (-)00010011  ---1's compliment of +19 -->   11101100

-----------------------------------
  +10    --->   00001010
  
  +(-19) --->   11101100
    
  -----------------------
  result --->   11110110   ( result of (+10) + (-19's 1s compliment))
  -----------------------
  As MSB is 1 in the result (11110110), the result needs to be 1's complimented,
  and for decimal representation add -ve sign as prefix.

  --> 1's compliment of (11110110) = 00001001 in binary = 9 in decimal = -9 in decimal as MSB is 1.

  => 10 - 9 = -9 in decimal.
  
  Note: As the result's MSB bit is 1, the result will be in 1's compliment form.

------------------------------------------------------------------------------
2) 20+30

------------------------------------------------------------------------------
3) 36+12

------------------------------------------------------------------------------
