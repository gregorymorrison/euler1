# Euler1 in Julia

function euler1(n)
	result = 0
	for i = 1:n
		if i%3 ==0 || i%5 == 0
			result += i 
		end
	end
	result
end

println( euler1(999) )
