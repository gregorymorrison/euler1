#!/usr/bin/lua
-- Euler1 in Lua

-- calculate solution based on Quicksort problem decomposition
function euler(L, acc)
    if #L == 0 then
        return acc -- sum of multiples of 3 and 5 that are below 'size'
    end

    local pivot = math.max(1, math.floor(#L / 2)) -- get the middle element of the list

    -- recursively solve the problem for the left and right half of the list
    return (euler( {table.unpack(L, 1, pivot-1)}, acc ) -- solve problem for left half of the list
          + euler( {table.unpack(L, pivot+1, #L)}, acc ) -- solve problem for right half of the list
          + ( (L[pivot]%3 == 0 or L[pivot]%5 == 0)  and  L[pivot]  or  0 ) -- add pivot if it is a multiple of 3 or 5
          + acc) -- add the total found so far to the result
    end

-- generate a list of ints using tail recursion
function genInts(i, acc)
    table.insert(acc, i)

    if i == 0 then
        return acc -- when reaching 0, return the generated list
    end

    -- recursively generate a list of numbers from i to 0
    return genInts(i-1, acc)
end

function Euler1(size)
    -- call euler function with a list of numbers from 0 to 'size', and 0 as initial accumulator
    return euler(genInts(size, {}), 0)
end

-- print the solution of Euler1 problem for numbers below 1000
print ( "Euler1 = " .. Euler1(999) .. "\n" )