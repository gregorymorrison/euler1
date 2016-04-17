# Euler1 in Julia

function euler(n, acc)
    if n == 1
        acc
    elseif n%3 == 0 || n%5 == 0
        euler(n-1, acc+n)
    else
        euler(n-1, acc)
    end    
end

function Euler1(n)
    euler(n, 0)
end

print ( Euler1(860000), "\n" )
