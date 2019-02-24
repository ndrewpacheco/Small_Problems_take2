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


# new_arr = []
# multiple = 1

# digit = num % (10 * multiple)
# digit /= (1 * multiple)
 # new arr << digit 
# num -= digit 
        


# multiple *= 10        
# break if num == 0

INTS_TO_STRS = Hash[(0..9).zip(("0".."9"))]

def integer_to_string(num)
  new_arr = []
  multiple = 1

  loop do

    digit = num % (10 * multiple)
    num -= digit

    digit /= (1 * multiple)
    new_arr << digit 
     
    multiple *= 10  
    break if num == 0
  end

  new_arr.reverse.map {|element| INTS_TO_STRS[element]}.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

