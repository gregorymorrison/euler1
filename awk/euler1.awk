#!/bin/awk -f
# Euler1 in AWK

BEGIN {sum = 0}
{
    for (i = 1; i<1000; i++) {
        if (i%3==0 || i%5==0) {
            sum+= i;
        }
    }
}
END {print sum}