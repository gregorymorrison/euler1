( Euler1 in Forth )

: Euler1 RECURSIVE   ( acc n -- r )
    DUP              ( acc n n )
    0= IF            ( acc n )
        DROP         ( acc )

    ELSE
        DUP          ( acc n n )
        3            ( acc n n 3 )
        MOD 0=       ( acc n tf )
        OVER         ( acc n tf n )
        5            ( acc n tf n 5 )
        MOD 0=       ( acc n tf tf )
        OR           ( acc n tf )
        IF           ( acc n )
            SWAP     ( n acc )
            OVER     ( n acc n )
            +        ( n acc+n )
            SWAP     ( acc+n n )
        THEN
        1 -          ( acc n-1 )
        Euler1       ( acc n-1 )
    THEN ;

0 999 Euler1 . BYE 