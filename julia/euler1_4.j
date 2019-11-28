# Euler1 in Julia

function euler(c::Channel)
    i = 0
    while true
        if i%3 ==0 || i%5 == 0
             put!(c, i) 
        end
        i += 1
    end
end

function euler1(n)
    task = Channel(euler)

    result = 0
    while true
        i = take!(task)
        if i >= n
            break
        end
        result += i
    end

    result
end

println("euler1 = $euler1(1000))")
