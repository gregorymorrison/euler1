// Euler1 in C
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int* range(int start, int end) {
	int *ints = (int*)malloc(sizeof(int) * (end-start));
	for (int i = start; i < end; i++) {
		ints[i-start] = i;
	}
	return ints;
}

int* map(int(*func)(int), int* ints, int size) {
	for (int i = 0; i < size; i++) {
		ints[i] = func(ints[i]);
	}
	return ints;
}

int* filter(bool(*func)(int), int* ints, int* size) {
	int* newInts = (int*)malloc(sizeof(int) * *size);
	int newSize = 0;
	for (int i = 0; i < *size; i++) {
		if (func(ints[i])) {
			newInts[newSize] = ints[i];
			newSize += 1;
		}
	}
	void* new_ptr = realloc(newInts, sizeof(int) * newSize);
	free(ints);
	ints = newInts;
	*size = newSize;
	return ints;
}

int reduce(int(*func)(int, int), int *ints, int size) {
	int result = 0;
	for (int i = 0; i < size; i++) {
		result = func(ints[i], result);
	}
	return result;
}

int myMap(int i) {
	return i;
}

bool myFilter(int i) {
	return i % 3 == 0 || i % 5 == 0;
}

int myReduce(int i, int j) {
	return i + j;
}

int euler1(int size) {
	int* ints = range(0, size);

	ints = map(&myMap, ints, size);
	ints = filter(&myFilter, ints, &size);
	int sum = reduce(&myReduce, ints, size);

	free(ints);
	return sum;
}

int main() {
	printf("Euler1 = %i\n", euler1(1000));
	return 0;
}
