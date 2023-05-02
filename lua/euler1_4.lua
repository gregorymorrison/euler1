#!/usr/bin/lua5.4
-- Euler1 in Lua

function euler1(n)
    result = 0

    for i = 0, math.floor(n/3) do
        result = result + (i * 3)
    end
    for i = 0, math.floor(n/5) do
        result = result + (i * 5)
    end
    for i = 0, math.floor(n/15) do
        result = result - (i * 15)
    end

    return result
end

print (string.format("Euler1 = %d", euler1(999)))
