# Euler1 in Julia

function mySum(n::Int, size::Int)
    (floor(size/n)^2 + floor(size/n)) * n / 2
end

function euler1(size::Int)
	mySum(3, size) + mySum(5, size) - mySum(15, size)
end

println("euler1 = $(euler1(999))")
