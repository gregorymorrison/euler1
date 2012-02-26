-- Euler1 in AppleScript

on Euler1(size)
	set retval to 0 as integer
	repeat with i from 1 to size
		if i mod 3 = 0 or i mod 5 = 0 then
			set retval to retval + i
		end if
	end repeat
	return retval
end Euler1

Euler1(999)
