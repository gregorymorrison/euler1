// Euler1 in C
#include <stdio.h>
#include <math.h>

double mySum(int n, int size) {
	return (pow(floor(size/n), 2) + floor(size/n)) * n / 2;
}

int euler1(int size) {
    return mySum(3, size) + mySum(5, size) - mySum(15, size);
}

int main() {
    printf("euler1 = %i\n", euler1(999));
	return 0;
}
