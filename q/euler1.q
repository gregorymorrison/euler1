#!/usr/bin/q -c main
// Euler1 in Q 

euler1 N = sum [X : X in [1..N], (X mod 3 = 0) or else (X mod 5 = 0)];

main = write (euler1 999);
