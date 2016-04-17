! Euler1 in Factor

USING: io kernel math.functions math.ranges 
prettyprint quotations sequences
command-line namespaces ;
IN: euler1

: mod3_5? ( n -- ? )  [ 3 divisor? ] [ 5 divisor? ] bi or ;
: mod3_5  ( n -- n )  dup mod3_5? swap 0 ? ;
: euler1  ( n -- n )  1  [a,b] [ mod3_5 ] map sum ;

command-line get [
    999 euler1 . 
] [ ] if-empty
