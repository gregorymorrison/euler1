// Euler1 in D

import std.stdio, std.range;
import std.algorithm.iteration : map, filter, fold;

int myMap(int i) {
   return i;
}
bool myFilter(int i) {
	return i % 3 == 0 || i % 5 == 0;
}
int myFold(int i, int j) {
	return i + j;
}

int euler1(int size) {
    return iota(0, size)
        .map!myMap
        .filter!myFilter
        .fold!myFold;
}

int main() {
    printf("Euler1 = %i\n", euler1(1000));
    return 0;
}
