#!/bin/python

def W_brute(n, k):
  approved_cases = []
  all_cases = []

  def multiply_case(case):
    value = 1
    for i in case: value *= i
    return value


  def increment_case(case, highest):
    #print("\tgot " + str(case) + " ^" +str(highest))
    if len(case) <= 1: return case[:]

    case[-1] += 1

    if case[-1] >= highest:
      return increment_case(case[:-1], highest) + [1]

    else: 
      #print("\t< returning " + str(case))
      return case[:]

  print(increment_case([1,3,4], 5))
  print(increment_case([1,3,4], 4))


  # case = [1, 1, 1, ..... 1]
  case = [1] * k
  i = 0

  while(i < 144 * 144 * 144):
    case = increment_case(case[:], n)
    print(i, case, multiply_case(case))
    i+=1

  #print(n, k, )

W_brute(144, 4)