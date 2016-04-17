// Euler1 in C

#include<stdio.h>

int euler(int n) {
	int retval = 0;
	for (int i=0; i<n; i++) {
		if ((i % 3 == 0) || (i % 5 == 0)) {
			retval += i;
		}
	}
	return retval;
}

main() {
	printf("%i\n", euler(1000));
}
