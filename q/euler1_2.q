#!/usr/bin/q -c main
// Euler1 in Q 

euler 0 Acc = Acc;
euler N Acc = euler (N-1) (Acc+N)  if (N mod 3 = 0) or else (N mod 5 = 0);
            = euler (N-1)  Acc     otherwise;

euler1 N = euler N 0;

main = write (euler1 999);
