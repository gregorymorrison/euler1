#!/usr/bin/q -c main
// Euler1 in Q 

type mod_3_5 n::int = n mod 3 == 0 || n mod 5 == 0;
mod_3_5 n = typep mod_3_5 n;

euler1 n = euler 0 n with
    euler acc 0          = acc;
    euler acc n::mod_3_5 = euler (acc+n) (n-1);
    euler acc n          = euler  acc    (n-1);
end;

main = write (euler1 999);
