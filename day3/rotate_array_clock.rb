# Given an input Array, rotate k units clockwise, i.e. shift the values rightward k units.
# k is an integer that is greater than or equal to 0.
require "pry"

def rotate_array(arr, k)
  # First
  # Loop k times
  #   remove the last value
  #   and add that last value to the beginning

  i = 0
  rotations = k % arr.length
  while i < rotations
    puts i
    last_value = arr.pop
    arr.unshift(last_value)
    i += 1
  end
  arr
  # binding.pry
end

puts "TESTING..."
p rotate_array([1, 2, 3, 4], 1) # [2,3,4,1]
p rotate_array([1, 2, 3, 4], 2) # [3,4,1,2]
p rotate_array([1, 2, 3, 4], 3)
p rotate_array([1, 2, 3, 4], 4)
p rotate_array([1, 2, 3, 4], 101) # [2,3,4,1]
