## A palindromic number reads the same both ways. The largest palindrome made
## from the product of two 2-digit numbers is 9009 = 91 × 99.
##
## Find the largest palindrome made from the product of two 3-digit numbers.


# A helper function to convert a number into a vector of it's digits
vectorify <- function(n, vector=c()) {
  if (n <= 0) return(vector)

  ret <- c(n %% 10, vector)
  return(vectorify(floor(n / 10), ret))
}


# A helper function to check if a number is a palindrome or now
isPalindrome <- function(x) {
  a <- vectorify(x)
  return (all(rev(a) == vectorify(x)))
}


# this function takes the number of digits you want find the largest palindrome
# made from the product of two 'digits_count'-digit numbers.
solution <- function(digits_count) {
  largestNumber = 0

  start = 10 ** (digits_count - 1)
  end = (10 ** (digits_count)) - 1

  for(a in seq(start, end))
    for(b in seq(a, end))
      if(isPalindrome(a * b))
        largestNumber = max(largestNumber, a * b)

  return(largestNumber)
}


print(solution(3))