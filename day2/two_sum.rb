# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

require "pry"

def two_sum(nums, target)
  # Brute Force => O(n^2)
  # check all pairs for the target
  # ex:
  #   2+7, 2+11, 2+15, 7+11, 7+15, ....
  #   find target

  # How to do this in O(n)?
  # creating a tracker for the difference between the nums[i] and the target
  # we loop through the array
  #   check if we've seen the diff to equal to num of our current value

  # Start with an empty hash/obj
  hash = {}

  nums.each_with_index do |num, idx|
    # what value of num + ? would equal target
    # find the diff between our target and the current num
    diff = target - num

    p "diff: #{diff}, num: #{num}"
    if !!hash[num]
      return [hash[num], idx]
    end

    hash[diff] = idx
    p hash
  end
  # return hash
end

def two_sum_brute(nums, target)
  output = []
  i = 0
  while i < nums.length
    j = i + 1
    while j < nums.length
      sum = nums[i] + nums[j]
      p "#{i}, #{j}, #{sum}"
      if target == sum
        output = [i, j]
      end
      j += 1
    end
    i += 1
  end
  output
end

puts "TESTING..."

nums1 = [2, 7, 11, 15]
nums2 = [3, 2, 4]

p two_sum_brute(nums1, 22)
# p two_sum(nums2, 6)
