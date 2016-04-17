#!/usr/bin/perl
# Euler1 in Perl

sub euler1 {
	my @array = (0..shift);
	my $sum = 0;
	foreach (@array) {
		if ($_ % 3 == 0 or $_ % 5 == 0) {
			$sum += $_;
		}
	}
	return $sum;
}
print euler1(999);

