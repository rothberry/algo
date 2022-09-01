require "pry"

def calcBigO1(arr)
  x = 0
  y = 1
  z = 2
  for ele in arr
    a = x + y
    b = y + z
    c = z + a
    p a + b
  end
  puts "Hi"
  return c
end

def calcBigO2(arr)
  x = 0
  y = 1
  z = 2
  for ele in arr
    a = x + ele
    b = y + ele
    c = z + ele
    p a + b
  end
  for ele in arr
    d = ele + a
    e = ele + c
    f = ele + b
    p a + b
  end
  puts "Hi"
  return f
end

# worst case
def wheres_waldo(list)
  found = false

  list.each_with_index do |person|
    if person == "waldo"
      found = true
    end
  end
  return found
end

list1 = %w(phil chauncy waldo)
list2 = %w(waldo phil chauncy ......)

wheres_waldo(list1) # O(3)
wheres_waldo(list2) # O(n = 10000000000000)



# assume square matrix
def wheres_waldo_matrix(matrix)
end


matrix1 = [
  ["phil", "chauncy"],
  ["cosmo", "waldo"],
]

matrix1 = [
  ["waldo", "chauncy"],
  ["cosmo", "phil"],
]


# drop constants
def printATonOffStuff(list)
  mid = list.length / 2
  i = 0
  while i < mid 
    puts list[i]
    i+=1
  end
  100.times do 
    puts "sup"
  end
end

# O(n/2 + 100) => O(n)

# What's the BigO?

# drop nondominant
def nonla(boxes)
  boxes.each do |box|
    puts "hi"
  end

  boxes.each do |b1|
    boxes.each do |b2|
      puts "woawo"
    end
  end
end

# => O(n^2)