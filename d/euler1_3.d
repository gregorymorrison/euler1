// Euler1 in C

import std.stdio : writeln;
import std.range;

int euler(R)(R ints) {
    if (ints.empty()) {
        return 0;
    }
    ulong pivot = ints.length / 2;

    int pre  = euler( iota(ints[0],       ints[pivot]) );
    int post = euler( iota(ints[pivot]+1, ints[ints.length-1]+1) );
    int pivotVal = (ints[pivot]%3 == 0 || ints[pivot]%5 == 0) ? ints[pivot] : 0;

    return pre + pivotVal + post;
}

int euler1(int size) {
    return euler(iota(0, size));
}

int main() {
    writeln("Euler1 = ", euler1(1000));
    return 0;
 }
