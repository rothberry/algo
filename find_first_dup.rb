require "pry"

# ! Given an Array, find the first duplicate value that occurs. 
# ! If there are no duplicates, return -1.

# * first thing we want to do in completely understand the problem
# What datatype(s) am I given? (Array of Integers)
# What datatype(s) is it expecting to RETURN? (Integer)
# Identify potential Stretch cases
  # i.e. if array has zero elements

def find_first_dup(arr)
  # * Next Start pseudocoding!
  # build out my FIRST thoughts as fake code

  # create a hash of elements we've seen
  # Loop through our array
  # check if we've seen this element before
  # if we haven't seen this element
      # log each element into the hash
      # continue the loop
    # if we've seen this element 
      # break the loop
      # return this element
  # if we get through the whole loop without seeing a duplicate
  # return -1

  seen = {}
  # number counter
  arr.each do |x|
    if !seen["element>#{x}"] 
      seen["element>#{x}"] = 1
    else 
      return x
    end
    p seen
  end
  return -1
end

arr1 = [2, 1, 3, 3, 2]
arr2 = [1, 2, 3, 4]

puts "\nTESTING\n"
puts "RETURNSSSSS => #{find_first_dup(arr1)}"
puts "RETURNSSSSS => #{find_first_dup(arr2)}"
puts "RETURNSSSSS => #{find_first_dup([])}"
