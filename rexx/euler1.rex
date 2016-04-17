/* Euler1 in Rexx */

SAY Euler1(1000)
EXIT

Euler1:
    PROCEDURE
    PARSE ARG size
    retval = 0
    DO i = 1 to size-1
        IF i//(3)==0 THEN
            retval = retval + i
        ELSE IF i//5==0 THEN
            retval = retval + i
    END    
    RETURN retval

