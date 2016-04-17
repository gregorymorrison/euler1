/* Euler1 in Rexx */

/* Calculate factorial x, that is, 1*2*3* ... *x  */
SAY "Enter a number"
PARSE PULL num .
SAY num"!="factorial(num)
EXIT

factorial: /* calculate the factorial of the argument */
   PROCEDURE
   PARSE ARG num
   IF num<3 THEN RETURN num
   ELSE RETURN factorial(num-1) * p