#!/usr/bin/lua5.4
-- Euler1 in Lua

function euler(n, acc)
    if n == 1 then
        return acc
  elseif n%3 == 0 or n%5 == 0 then
        return euler(n-1, acc+n)
  else
      return euler(n-1, acc)
  end
end

function euler1(n)
    return euler(n, 0)
end

print (string.format("Euler1 = %d", euler1(999)))
