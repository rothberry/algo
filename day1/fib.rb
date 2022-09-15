require "pry"

def fibonacci(num, array = [0, 1])
  # First
  # starter array => [0,1]
  # Loop num times
  # for each loop
  #   we will need to add the prev 2 values together
  #   and PUSH into our array
  # Once we get to our num
  # return the last value in the array

  # array at the end
  # => [0,1,1,2,3,5,8,....(arr[num - 2] + arr[num - 1])]
  # n = 0
  # [0]
  # n = 1
  # [0,1].last
  # n = 2
  # [0,1,1].last
  # n = 5
  # [0,1,1,2,3,5].last
  # n = 6
  # [0,1,1,2,3,5,8].last
  # n = 7
  # [0,1,1,2,3,5,8,13].last

  array = [0, 1]
  # 2 stretch cases
  # if num is 0, return 0
  # if num is 1, return 1
  if num < 2
    return array[num]
  end

  i = 2
  while i <= num
    new_value = array[i - 2] + array[i - 1]
    p "i: #{i}, new_val: #{new_value}"
    array.push(new_value)
    i += 1
  end

  return array.last
end

def fib_rec(num, str)
  # First thing you need in recur is a BREAKING condition
  p "Num is currently: #{num}, as #{str}"
  return num if num < 2

  return fib_rec(num - 1, "minus 1") + fib_rec(num - 2, "minus 2")
end

# Dynamic Programming
# Think about the problem this way
# Given num, return the fib at that index
# first num is 3
# [0,1,1] return 1
# Next num is 7
# [0,1,1,2,3,5,8,13] return 13
# next num is 5
# cached_array[5] return 5
# hash = {0: 0, 1: 1, 2: 1...n: fib(n)}

puts "TESTING..."
# p fibonacci(3) # 2
# p fibonacci(10) # 55

# p fib_rec(3) # 2
# p fib_rec(10, "first") # 55
