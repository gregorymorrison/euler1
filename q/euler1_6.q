#!/usr/bin/q -c main
// Euler1 in Q 

mySum Size N = trunc (N * (floor(Size/N)^2 + floor(Size/N)) / 2);

euler1 N = mySum N 3 + mySum N 5 - mySum N 15;

main = write (euler1 999);
