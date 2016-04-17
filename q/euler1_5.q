#!/usr/bin/q -c main
// Euler1 in Q 

mod_3_5 N = N if (N mod 3 = 0);
          = N if (N mod 5 = 0);
          = 0;

// the midpoint of the list
mid  Xs = floor(#Xs / 2);
// return a value for the midpoint element
val  Xs = mod_3_5 (Xs ! mid Xs);
// plus euler on the first half of the list
pre  Xs = sub Xs 0 ((mid Xs)-1);
// plus euler on the last half of the list
post Xs = sub Xs ((mid Xs)+1) (#Xs);

euler [] = 0;
euler Xs = euler(pre Xs) + (val Xs) + euler(post Xs);

euler1 N = euler [1..N];

main = write (euler1 999);

