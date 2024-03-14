**RV Software Toolchain Labwork**

Agenda:

   1. C-Program to compute sum from 1 to N

   2. RISCV GCC compile and disassamble

   3. Spike simulation and Debug

-----------------------------------------------------------------------------------------------------------------------------------

1. C-Program to compute sum from 1 to N.

#include <stdio.h>

int main() {
    int sum = 0, N = 5, index;

    for( index = 1; index <= 5 ; index++ ){
        sum += index;
    }

    printf("sum from 1 to %d = %d\n", N, index);
}

-----------------------------------------------------------------------------------------------------------------------------------

