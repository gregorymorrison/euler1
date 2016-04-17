# Euler1 in Julia

function euler()
    i = 0
    while true
        if i%3 ==0 || i%5 == 0
             produce(i) 
        end
        i += 1
    end
end

function euler1(n)
    task = Task(euler)

    result = 0
    while true
        i = consume(task)
        if i >= n
            break
        end
        result += i
    end

    return result
end

println (euler1(1000))
