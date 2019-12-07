// Euler1 in C

#include <stdio.h>

int euler(int n) {
	int retval = 0;
	for (int i=0; i<n; i++) {
		retval += (i%3 == 0 || i%5 == 0 ? i : 0);
	}
	return retval;
}

int main() {
	printf("euler1 = %i\n", euler(1000));
	return 0;
}
