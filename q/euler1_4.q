#!/usr/bin/q -c main
// Euler1 in Q 

myMap    Xs = map id Xs;
myFilter Xs = filter (\X.(X mod 3 = 0) or else (X mod 5 = 0)) Xs;
myFold   Xs = foldl (+) 0 Xs;

euler []     X  = X;
euler [F|Fs] Xs = euler Fs (F Xs);

euler1 N = euler [myMap,myFilter,myFold] [1..N];

main = write (euler1 999);
