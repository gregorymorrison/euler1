#! /usr/bin/gawk -f
# Euler1 in AWK

function range(size, ints,     i) {
	for (i=1; i<=size; i++)
		ints[i] = i;
}

function slice(_ints, start, end, sliced,     i, _sliced) {
	for (i in _ints) {
		if (int(i) >= int(start) && int(i) <= int(end)) {
			_sliced[i] = i;
		} else if (int(i) > int(end)) {
			break;
		}
	}
	delete sliced;
	for (i in _sliced)
		sliced[i] = i;
}

function euler(ints,     pivot, pivotVal, pre, post, first, last, i, j, postInts) {
	if (length(ints) == 0)
		return 0;

	j = 0;
	for (i in ints) {
		postInts[i] = i;
		if (int(first) == 0) {
			first = i;
		}	
		last = i;
		if (j == int(length(ints)/2))
			pivot = i;
		j += 1;
	}

	pivotVal = 0;
	if (ints[pivot]%3==0 || ints[pivot]%5==0) {
		pivotVal = ints[pivot];
	}

	slice(ints, first, pivot-1, sliced);
	if (length(sliced) > 0) {
		pre = euler(sliced);
	}

	slice(postInts, pivot+1, last, sliced);
	if (length(sliced) > 0) {
		post = euler(sliced);
	}

	return pre + pivotVal + post;
}

function euler1(size) {
	range(size, ints);
	return euler(ints);
}

BEGIN {
	print "euler1 = " euler1(999)
}
