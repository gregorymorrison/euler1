// Euler1 in D

import std.stdio;
import std.math;

double mySum(int n, int size) {
    float myFloor = floor(cast(float)(size/n));
    return (pow(myFloor, 2) + myFloor) * n / 2;
}

double euler1(int size) {
    return mySum(3, size) + mySum(5, size) - mySum(15, size);
}

int main() {
    writeln("Euler1 = ", euler1(999));
    return 0;
}
