#! /home/greg/dev/factor/factor
! Euler1 in Factor

USING: math kernel io math.ranges math.functions math.parser sequences prettyprint quotations ;
IN: main

: mod3? ( n -- ? )   3 divisor? ;
: mod5? ( n -- ? )   5 divisor? ;
: mod3_5? ( n -- ? ) [ mod3? ] [ mod5? ] bi or ;
: mod3_5 ( n -- n )  dup swap mod3_5? swap 0 ? ;

: euler1 ( n -- n )  1 [a,b] [ mod3_5 ] map sum ;

: main ( -- )        999 euler1 . ;
