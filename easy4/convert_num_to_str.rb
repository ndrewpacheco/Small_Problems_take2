# In the previous two exercises, 
#you developed methods that convert simple numeric strings to signed Integers.
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way 
# and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# use modulo  by 10 to individualy get each digit. Story into an array, stop when the number equals zero
# increase the exponent each time

# use  a constant num-str hash to match each digit
# join the array.

NUM_TO_STR = Hash[(0..9).zip("0".."9")]

def integer_to_string(num)
  exponent = 1
  method_num = num
  digits_arr = []
  loop do
    digit = method_num % (10**exponent) 
    method_num -= digit
     
    digits_arr << digit / (10 ** (exponent - 1)) 
    exponent += 1
    break if method_num == 0
  end

  digits_arr.reverse!.map{|digit| NUM_TO_STR[digit]}.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'