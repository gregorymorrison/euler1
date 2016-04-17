#!/bin/awk -We
# Euler1 in AWK
# echo . | euler1.awk

BEGIN {a = 0}
{
	for (i = 1; i<1000; i++) {
		if (i%3==0 || i%5==0) {
			retval += i;
		}
	}
}
END {print retval}