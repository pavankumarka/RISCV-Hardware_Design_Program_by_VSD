Matrix Multiplication Driver function:
      
      void mulMat(int mat1[][C1], int mat2[][C2])
      {
      	int rslt[R1][C2];
      
      	printf("Multiplication of given two matrices is:\n");
      
          clock_t start_time, end_time;
      
          start_time = clock() ; 
      
      	for (int i = 0; i < R1; i++) {
      		for (int j = 0; j < C2; j++) {
      			rslt[i][j] = 0;
      
      			for (int k = 0; k < R2; k++) {
      				rslt[i][j] += mat1[i][k] * mat2[k][j];
      			}
      
      			printf("%d\t", rslt[i][j]);
      		}
      
      		printf("\n");
      	}
      
          end_time = clock() ; 
          printf("Total time taken in seconds %d:\n", end_time - start_time);
      
      }
---------------------------------------------------------------------------------------------------------------------------------------

Assembler Comparison wrt instuction set using Gotbolt compiler:

![image](https://github.com/pavankumarka/RISCV-Hardware_Design_Program_by_VSD/assets/22821014/5d0c2da7-2d83-4980-b4df-00c8ba1c3507)

---------------------------------------------------------------------------------------------------------------------------------------

**Instructions seen in 32bit and 64bit RISC-V ISA**

      add
      addi
      call
      j
      lui
      lw
      slli
      sw

these instruction keywords are bind with registers such as,
      sp
      ra
      s0
      a1 - a5
      zero

------------------------------------------------------------------------------------------------------------------------------------------

In x86 ISA, the instructions used are,

      call
      cdqe
      jmp
      mov
      movsx
      sub
      push

these instruction keywords are bind with registers such as,

      rbp
      rsp
      edi
      eax
      ecx
      edx
      rax
      rdx

------------------------------------------------------------------------------------------------------------------------------------------





