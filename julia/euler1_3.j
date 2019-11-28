# Euler1 in Julia

myMap    = x -> x
myFilter = x -> x%3==0 || x%5==0
myReduce = (x,y) -> x+y

function euler1(n::Int)
    mapped = map(myMap, collect(1:n))
    filtered = filter(myFilter, mapped)
    reduce(myReduce, filtered)
end

println("euler1 = $(euler1(999))")
