package main

func euler(size int) int {
    retval := 0
    for i := 1; i < size; i++ {
        if i%3==0 || i%5==0 {
            retval += i
        }
    }
    return retval
}

func main() {
    println(euler(1000))
}