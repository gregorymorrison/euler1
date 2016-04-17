# Euler1 in Julia

function euler1(L)
	if length(L) == 0
		0

	else
		pivot = int( length(L)/2 )
		pre =  euler1( L[1:pivot-1])
		post = euler1( L[pivot+1:] )
		i = (L[pivot]%3 ==0 || L[pivot]%5 == 0) ? L[pivot] : 0
		pre + post + i
	end
end

print (euler1( [1:8600000] ), "\n")
