#!/usr/bin/sq
// Euler1 in Squirrel

function Euler1(size) {
	local retval = 0
	for (local i = 0; i < size; i += 1) {
		if (i%3 == 0 || i%5 == 0)
			retval += i;
	}
	return retval
}

print( Euler1(1000) + "\n" );
