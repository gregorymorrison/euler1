#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int* range(int start, int end) {
    int* ints = (int*)malloc(sizeof(int) * (end-start));
    for (int i = start; i < end; i++) {
        ints[i-start] = i;
    }
    return ints;
}

int _euler(int n) {
    return n % 3 == 0 || n % 5 == 0 ? n : 0;
}

int euler(int* ints, int size, int acc) {
	if (size == 0) {
		return acc;
	}

	acc += _euler(ints[size-1]);
	void* new_ptr = realloc(ints, sizeof(int) * (size-1));
	euler(ints, size-1, acc);
}

int euler1(int size) {
	int* ints = range(0, size);
	int acc = 0;
	int sum = euler(ints, size, acc);
	free(ints);
	return sum;
}

int main() {
    printf("euler1 = %i\n", euler1(1000));
    return 0;
}
