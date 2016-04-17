#!/usr/bin/pike
// Euler1 in Pike

int mysum (int n, int size) {
    return (pow((size/n),2) + (size/n)) * n / 2;
}

int euler1 (int size) {
    return mysum(3,size) + mysum(5,size) - mysum(15,size);
}

int main () {
    write (euler1(999) + "\n");
}
