// Euler1 in D

import std.stdio;

int euler1(int n) {
    int retval = 0;

    for (int i=1; i<n; i++) {
        if (i%3 == 0 || i%5 == 0) {
            retval += i;
        }
    }

    return retval;
}

int main(char[][] args)
{
    writef( euler1(1000) );
    return 0;
}