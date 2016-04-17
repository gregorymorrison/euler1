# Euler1 in R

euler1 <- function(size) {
    result <- 0
    for (x in 1:size) {
        if (x %% 3 == 0 || x %% 5 == 0)
            result <- result + x
    }
    result
}

euler1(999)
