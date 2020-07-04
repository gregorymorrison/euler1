// Euler1 in C

import std.stdio, std.range;
import std.algorithm.iteration : map, filter, fold;

int euler1(int size) {
    return iota(0, size)
        .map!(i => i)
        .filter!(i => i % 3 == 0 || i % 5 == 0)
        .fold!((a, b) => a + b);
}

int main() {
    printf("Euler1 = %i\n", euler1(1000));
    return 0;
}
