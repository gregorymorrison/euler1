// Euler1 in C

import std.stdio;
import core.stdc.stdlib;

int* range(int start, int end) {
	int *ints = cast(int*)malloc(int.sizeof * (end-start));
	for (int i = start; i < end; i++) {
		ints[i-start] = i;
	}
	return ints;
}

int* map(int function(int i) func, int* ints, int size) {
	for (int i = 0; i < size; i++) {
		ints[i] = func(ints[i]);
	}
	return ints;
}

int* filter(bool function(int i) func, int* ints, int* size) {
	int* newInts = cast(int*)malloc(int.sizeof * *size);
	int newSize = 0;
	for (int i = 0; i < *size; i++) {
		if (func(ints[i])) {
			newInts[newSize] = ints[i];
			newSize += 1;
		}
	}
	void* new_ptr = realloc(newInts, int.sizeof * newSize);
	free(ints);
	ints = newInts;
	*size = newSize;
	return ints;
}

int reduce(int function(int i, int j) func, int *ints, int size) {
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
	printf("euler1 = %i\n", euler1(1000));
	return 0;
}
