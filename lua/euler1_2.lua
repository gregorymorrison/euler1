#!/usr/bin/lua5.3
-- Euler1 in Lua

function euler(n, size)
	return (math.floor(size/n)^2 + math.floor(size/n)) * n / 2 
end

function euler1(n)
	return euler(3, n) + euler(5, n) - euler(15, n)
end

print (string.format("Euler1 = %d", euler1(999)))

