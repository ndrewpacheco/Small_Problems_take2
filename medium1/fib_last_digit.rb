# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. 
#This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Examples:

# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

def fibonacci(n)
  fib_arr = [1, 1]

  (n-2).times do
    new_fib_num = fib_arr[-2] + fib_arr[-1]
    fib_arr << new_fib_num
  end
  fib_arr.last
end

def fibonacci_last(n)
  # fibonacci(n).to_s.chars.last.to_i
  fib_arr = [1, 1]

  (n-2).times do
    new_fib_num = fib_arr[-2] + fib_arr[-1] 
    fib_arr << new_fib_num % 10
  end
  fib_arr.last
end



p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)

p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4