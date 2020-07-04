// Euler1 in D

import std.stdio, std.range;

int _euler(int n) {
    return n % 3 == 0 || n % 5 == 0 ? n : 0;
}

int euler(R)(R ints, int acc) {
    if (ints.empty()) {
        return acc;
    }

    acc += _euler(ints.front());
	ints = ints.drop(1);
    return euler(ints, acc);
}

int euler1(int size) {
    auto ints = iota(0, size);
    return euler(ints, 0);
}

int main() {
    writeln("Euler1 = ", euler1(1000));
    return 0;
}
