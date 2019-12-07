// Euler1 in C

#include <stdio.h>

int euler1(int n, int acc) {
	return n == 0 ? acc :
		euler1( n-1, acc+(n%3==0 || n%5==0 ? n : 0) );
}

int main() {
	printf("euler1 = %i\n", euler1(999, 0));
	return 0;
}
