# In the previous exercise, you developed a method that converts non-negative numbers to strings.
# In this exercise, you're going to extend that method by adding the ability 
# to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, 
#String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

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

# if num is 0, return "0"
# if the number is negative, make it positive
# use old method, prepending the "-" sign
# else use old method, prepend "+" sign


def signed_integer_to_string(num)
  return "0" if num == 0
  if num < 0
    num *= -1
    "-" + integer_to_string(num)
  else
    "+" + integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'