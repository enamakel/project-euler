## 2520 is the smallest number that can be divided by each of the numbers from 1
## to 10 without any remainder.
##
## What is the smallest positive number that is evenly divisible by all of the
## numbers from 1 to 20?


# This number controls how many first integers should the number be divisible
# to.
limit = 20


# Variable to hold the final answer
result = 1


# This vector will contain the set of factors that our number must have.
# According to the question, it's the first 20 integers.
setOfFactors <- seq(2, limit)


# Helper function that returns a set of numbers given it's factors
factors <- function(x) {
  ret = c()

  for(i in seq(x))
    if(x %% i == 0 && i %in% setOfFactors)
      ret <- c(ret, i)

  return(ret)
}


# Go through every factor from the beggining.
while(length(setOfFactors) > 0) {
  factor = setOfFactors[1]

  # Sometimes we might hit an infinite loop, so this prevents that.
  if (is.na(factor)) break

  # Now every element in our remaining list of factors, we start dividing it
  # with our current factor to remove any factors getting multiplied again.
  #
  # This is crucial step that ensures that we always keep the smallest number
  # possible.
  index = 0
  for (subfactor in setOfFactors) {
    index <- index + 1
    if(subfactor %% factor == 0)
      setOfFactors[index] = subfactor / factor
  }


  # Multiply the factor to our result which should form the final number
  result = result * factor

  # Remove the first element from the set of factors, effectively removing the
  # factor we just multiplied.
  setOfFactors <- setOfFactors[2:length(setOfFactors)]
}

print(result)