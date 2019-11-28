# Euler1 in Julia

function euler(L::Array)
	if length(L) == 0
		0
	else
		pivot = round(Int, length(L)/2) + 1
		pre  = euler( L[1:pivot-1] )
		post = euler( L[pivot+1:end] )
		i = (L[pivot]%3 ==0 || L[pivot]%5 == 0) ? L[pivot] : 0
		
		pre + i + post
	end
end

function euler1(size::Int)
	euler( collect(1:size) )
end

println("euler1 = $(euler1(999))")
