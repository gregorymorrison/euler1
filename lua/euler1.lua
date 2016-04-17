#!/usr/bin/lua
-- Euler1 in Lua

function euler(n)
	local retval = 0
	for i = 0, n do
		if i % 3 == 0 or i % 5 == 0 then
			retval += i
		end
	end
	return retval
end

print (euler(999))
