# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

require "pry"

def climbing_stairs(n)
  # first
  # loop n times
  #   inside the loop add1, add2....

  out = [1, 2]

  if n < 3
    return out[n - 1]
  end

  i = 2
  while i < n
    out.push(out[i - 1] + out[i - 2])
    p out
    i += 1
  end

  return out[n - 1]
end
=begin 
n = 1 => 1
1
n = 2 => 2
11
2
n = 3 => 3
111
21
12
n = 4 => 5
1111
211
121
112
22
n = 5 => 8
11111
2111
1211
1121
221
1112
212
122
n = 6 => 13
111111
21111
12111
11211
2211
11121
2121
1221
11112
2112
1212
1122
22

n = n => climbing_stairs(n - 1) + climbing_stairs(n - 2)
add 1 to the end of all the previous combinations
add 2 to the end of the n - 2 combiniations
=end

p climbing_stairs(2)
# p climbing_stairs(3)
# p climbing_stairs(4)
p climbing_stairs(5)
# p climbing_stairs(6)
p climbing_stairs(42)
p climbing_stairs(100)
