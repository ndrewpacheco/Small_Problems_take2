# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# Examples:

# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501


# loop?
# break until?

# have an array to store each fib number?

#[1,1]

# new_fib_num = arr[-2] + arr[-1]

# arr < new fib num 

# times method, n - 2 would be number as there already two elements in array


# return arr.last

def fibonacci(n)
  fib_arr = [1, 1]

  (n-2).times do
    new_fib_num = fib_arr[-2] + fib_arr[-1]
    fib_arr << new_fib_num
  end
  fib_arr.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#fibonacci(100_001) # => 4202692702.....8285979669707537501

