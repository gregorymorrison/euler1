REM Euler1 in QBasic

PRINT Euler1(999)
QUIT

DEF Euler1(n)
LOCAL i, result
result = 0
FOR i = 1 TO n
    IF i MOD 3 = 0 OR i MOD 5 = 0 THEN
        result = result + i
    ENDIF
NEXT i
=result
