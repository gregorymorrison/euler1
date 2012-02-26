#!/usr/bin/io
// Euler1 in IO

euler1 := method(n,
    sum := 0;

    for(i, 1, n-1,
        if ((i%3==0 or i%5==0),
            (sum := sum + i);
        );
    );
    return (sum);
);

euler1(1000) println;