## By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
## that the 6th prime is 13.
##
## What is the 10001st prime number?


# Simple function to check if a number is prime or not.
is_prime <- function(n) {
  factor_count <- 0
  for(i in seq(n)) {
    if(n %% i == 0) {
      factor_count <- factor_count + 1
    }
  }
  return(factor_count == 2)
}

# Search limit
limit <- 10001

# Simple loop to get the i'th prime
i = 1
while(limit > 0) {
  i <- i + 1
  if (is_prime(i)) limit <- limit - 1
}

# When the loop exits, we have our target number!
print(i)