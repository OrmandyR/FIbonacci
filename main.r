fib_sequence <- function(n) {
  if (n <= 1) return(n)
  return(fib_sequence(n-1) + fib_sequence(n-2))
}
#fib_length code take to long if put for 1000
fib_length <- 20

fibonacci <- vector(mode = "numeric", length = fib_length)
for (i in 1:fib_length) {
  fibonacci[i] <- fib_sequence(i-1)
}
for (i in 1:1000) {
  if (i %in% fibonacci) {
    cat("fib")
  } else if (i %% 3 == 0 & i %% 5 == 0) {
    cat("fizzbuzz!")
  } else if (i %% 3 == 0) {
    cat("fizz")
  } else if (i %% 5 == 0) {
    cat("buzz")
  } else {
    cat(i)
  }
  }