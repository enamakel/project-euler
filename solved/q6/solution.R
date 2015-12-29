## The sum of the squares of the first ten natural numbers is,
##
## 1^2 + 2^2 + ... + 10^2 = 385
##
## The square of the sum of the first ten natural numbers is,
##
## (1 + 2 + ... + 10)^2 = 552 = 3025
##
## Hence the difference between the sum of the squares of the first ten natural
## numbers and the square of the sum is 3025 − 385 = 2640.
##
## Find the difference between the sum of the squares of the first one hundred
## natural numbers and the square of the sum.


# Returns the sum of sqaures for naturnal numbers upto n
sum_of_squares <- function(n) {
  sum <- 0
  for (i in seq(n)) {
    sum <- sum + (i * i)
  }
  return(sum);
}

# Returns the square of the sum of natural numbers upto n
square_of_sums <- function(n) {
  sum <- sum(seq(n))
  return(sum * sum)
}

print(square_of_sums(100) - sum_of_squares(100))