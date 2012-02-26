( Euler1 in Forth )

: Euler1 ( n -- r )
    0
    SWAP
    1 DO
        I 3 MOD 0= I 5 MOD 0= OR
        IF
            I + THEN
    LOOP ;

1000 Euler1
.
BYE