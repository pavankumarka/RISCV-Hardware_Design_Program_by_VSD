// C-Program to compute sum from 1 to N.

#include <stdio.h>

int main() {
    
    int sum = 0, N = 100, index;

    for( index = 1; index <= N ; index++ ){
        sum += index;

	if(index % 20 == 0)
		printf("sum from 1 to current number %d = %d\n", index, sum);

    }

    printf("sum from 1 to %d = %d\n", N, sum);
    
    return 0;
}
