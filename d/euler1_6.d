// Euler1 in D

import std.algorithm.iteration;
import std.stdio, std.range;

int euler1(int n) {
    return sum(iota(0, n, 3)) + sum(iota(0, n, 5)) - sum(iota(0, n, 15));
}

int main(char[][] args) {
    writeln( "Euler1 = ", euler1(1000) );
    return 0;
}
