REM Euler1 in QBasic

PRINT Euler1(999)
QUIT

DEF Euler1(n)
IF n < 3 THEN 
	=0
ELSE IF n MOD 3 = 0 OR n MOD 5 = 0 THEN
	=n+Euler1(n-1)
ELSE
	=Euler1(n-1)
ENDIF
