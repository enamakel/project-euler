## The prime factors of 13195 are 5, 7, 13 and 29.
## What is the largest prime factor of the number 600851475143 ?


targetNumber <- 600851475143

# A simple function to check if a number is prime or not..
isPrime <- function(n) {
  factorCount <- 0

  for(i in seq(1, n))
    if(n %% i == 0)
      factorCount <- factorCount + 1

  return(factorCount == 2)
}


# Here we start iterating backwards from the square root of the number and
# start checking if each number is a factor as well as if it's a prime number.
# Eventually when you hit the first prime, theoratically it should also be the
# largest prime as well..
for(i in seq(floor(sqrt(targetNumber)), 1))
  if (targetNumber %% i == 0 && isPrime(i)) {
    print(i)
    break
  }