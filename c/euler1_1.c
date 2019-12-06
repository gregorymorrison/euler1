// Euler1 in C

#include<stdio.h>

int euler(int n, int acc) {
	if (n == 1) {
		return acc;
	} else if (n % 3 == 0 || n % 5 == 0) {
		return euler(n-1, acc+n);
	} else {
		return euler(n-1, acc);
	}
}

main() {
	printf("euler1 = %i\n", euler(999, 0));
}
