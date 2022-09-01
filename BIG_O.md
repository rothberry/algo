# Big O Notation

## **TIME COMPLEXITY**

The total number of OPERATIONS that an algorithm will execute

To calculate the BigO of an algorithm, we can determine the number of operations for every line of code, then total the operations at the end. 

## *Constant Time => O(1)*
Any operation that is only applied once.

*Examples:*
- Assigning a variable
- any oper outside of a loop

## *Linear Time => O(N)*
Any operation that is applied to **every** element in the array.

*Examples:*
- Looping!
  - for, forEach, .each, .map....


```ruby
def calcBigO1(arr)
  x = 0   # O(1)
  y = 1   # O(1)
  z = 2   # O(1)
  for ele in arr
    a = x + y   # O(n)
    b = y + z   # O(n)
    c = z + a   # O(n)
    p a + b     # O(n)
  end
  puts "Hi"     # O(1)
  return c      # O(1)
end
```

Calc: 

Take the SUM of all the BigO's

Ex: O(1 + 1 + 1 + n + n + n + n + 1 + 1) => O(5 + 4n)

n = 10    => O(5+4n) => 45

n = 1000  => O(5+4n) => 4005

n = 100000000000000000000  => O(5+4n) => 40000000000000000000005
n = INFINITY => Drop the 5 -> 4 * INIFINTY ? equals inifinty

The resulting BigO is just O(n)

```ruby
def calcBigO2(arr1, arr2)
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
```

O(3 + 4n + 4n + 2) => O(5 + 8n) => O(n)
O(3 + 4n + 4m + 2) => O(5 + 4n + 4m) => O(n + m)


## *Quadratic Time => O(N^2)*
Any operation that is applied to the combination of every element together.
EX:

```shell 
[1,2,3,4] 
=> [1+1, 1+2, 1+3, 1+4, 2+1, 2+2, 2+3, 2+4, 3+1, 3+2, 3+3, 3+4, 4+1, 4+2, 4+3, 4+4]
```

*Examples:*
- Nested loops
- Recursion
- Matrix

```ruby
def calcBigO2(arr)
  x = 0
  y = 1
  z = 2
  out = ""
  for ele1 in arr
    for ele2 in arr
    out.push('#{ele1}, #{ele2}')
    p '#{ele1}, #{ele2}'
    end
  end
  return out
end
```

O(1 + 1 + 1 + 1 + n * n ) => O(3 + n^2) => O(n^2)

```ruby
def calcBigO2(arr1, arr2)
  out = ""
  for ele1 in arr1
    for ele2 in arr2
    out.push('#{ele1}, #{ele2}')
    p '#{ele1}, #{ele2}'
    end
  end
  return out
end

n = arr1.length, m = arr2.length
```

O(1 + n * m ) => O(n * m)

```ruby
  def recur(arr)
    # break condition
    if arr.length < 1 return false
    .....
    .......
    return recur(arr)
  end
```

---
## Big O Ground Rules

### Rule 1 => Always the WORST case
### Rule 2 => Remove Constants
### Rule 3 => Different Terms for different inputs
### Rule 4 => Drop NonDominants

--- 

## **SPACE COMPLEXITY**

How much memory is being used in an operation. There really is only 2 Big O's that we care about

### **Constant Space O(1)**
- Only uses the data provided by the inputs
- Does not ***ADD*** any additional data


### **Linear Space O(N)**
- Creates additional data for every input
- Ex: creating a new output array

### **Quadratic Space O(N^2)**
- Creates additional data of N for every input
- Ex: creating a new output array

```ruby
  def constant_space_add_2(nums)
    nums.each_with_index do |x, i|
      nums[i] = x + 2
    end
    return nums
  end

  def linear_space_add_2(nums)
    output = []
    nums.each do |x|
      output.push(x + 2)
    end 
    return output
  end

    def quad_space_add_2(nums)
    output = []
    nums.each do |x|
      inside_out = Array.new(nums.length).fill(x+2)
      output.push(inside_out)
    end 
    return output
  end
```