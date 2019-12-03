#! /usr/bin/gawk -f
# Euler1 in AWK

function range(size, ints,     i) {
	for (i=1; i<=size; i++) {
		ints[i] = i;
	}
}

function slice(_ints, start, end, sliced,     i, _sliced) {
	line = "_ints: ";
	for (i in _ints) {
		line = line " " i;
	}
	for (i in _ints) {
		if (int(i) >= int(start) && int(i) <= int(end)) {
			_sliced[i] = i;
		} else if (int(i) > int(end)) {
			break;
		}
	}
	delete sliced;
	for (i in _sliced) {
		sliced[i] = i;
	}
}

function euler(ints,     pivot, pivotVal, pre, post, result, first, last, i, j, postInts) {
	len = length(ints);
	postLen = len;
	# print "len: " len;
	if (len == 0) {
		return 0;
	}

	line = "ints: ";
	j = 0;
	first = 0;
	last = 0;
	for (i in ints) {
		postInts[i] = i;
		if (int(first) == 0) {
			first = i;
		}	
		last = i;
		if (j == int(length(ints)/2)) {
			pivot = i;
		}
		line = line " " i;
		j += 1;
	}

	pivotVal = 0;
	if (ints[pivot]%3==0 || ints[pivot]%5==0) {
		pivotVal = ints[pivot];
	}

	slice(ints, first, pivot-1, sliced);
	line = "preInts: ";
	for (i in sliced) {
		line = line " "  i;
	}
	if (length(sliced) > 0) {
		pre = euler(sliced);
	}

	slice(postInts, pivot+1, last, sliced);
	line = "postInts: ";
	for (i in sliced) {
		line = line " " i;
	}
	if (length(sliced) > 0) {
		post = euler(sliced);
	}

	result = int(pre) + int(pivotVal) + int(post);
	return result;
}

function euler1(size) {
	range(size, ints);
	result = euler(ints);
	return result;
}

BEGIN { print "euler1 = " euler1(999)}
