// Euler1 in D

import std.stdio;

int euler1(int n, int acc) {
	return n == 0 ? acc :
		euler1 (n-1, acc+(n%3==0 || n%5==0 ? n : 0) );
}

int main(char[][] args)
{
	writeln( "Euler1 = ", euler1(999, 0) );
	return 0;
}

