#!/usr/bin/pike
// Euler1 in Pike

int euler (int n, int acc) {
    if (n == 0) return acc;
    if (n % 3 == 0 || n % 5 == 0) {
        return euler (n-1, acc+n);
    } else {
        return euler (n-1, acc);
    }
}

int euler1 (int size) {
    return euler (size, 0);
}

int main() {
    write (euler1(999) + "\n");
    return 0;
}
