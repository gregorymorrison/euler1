/* Euler1 in Rexx */

euler = .Euler1~new(1000)
euler~solve
SAY euler
EXIT

::CLASS Euler1
    ::ATTRIBUTE size
    ::ATTRIBUTE result

    ::METHOD init
    	EXPOSE size
    	USE ARG size

	::METHOD solve
		EXPOSE size result
		result = 0
		DO i = 1 to size-1
			IF i//(3)==0 THEN
				result = result + i
			ELSE IF i//5==0 THEN
				result = result + i
		END

	::METHOD string
		EXPOSE result
		RETURN result