#!/usr/bin/lua5.3
-- Euler1 in Lua

function euler(n)
    local retval = 0
    for i = 0, n do
        if i % 3 == 0 or i % 5 == 0 then
            retval = retval + i
		end
	end
	return retval
end

print (string.format("Euler1 = %d", euler(999)))

