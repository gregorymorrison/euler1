// Euler1 in D

import std.algorithm.iteration;
import std.stdio, std.range;


class Euler1 {
    private int size;
    private int result;

    this(int size) {
        this.size = size;
    }

    void solve() {
        this.result = sum(iota(0, this.size, 3)) + sum(iota(0, this.size, 5)) - sum(iota(0, this.size, 15));
    }

    int getResult() {
        return this.result;
    }
}

int euler1(int n) {
    Euler1 euler1 = new Euler1(n);
    
    euler1.solve();

    return euler1.getResult();
}

int main(char[][] args) {
    writeln( "Euler1 = ", euler1(1000) );
    return 0;
}
