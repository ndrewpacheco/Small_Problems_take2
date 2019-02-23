# In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# The String may have a leading + or - sign;
# if the first character is a +, your method should return a positive number;
# if it is a -, your method should return a negative number.
# If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc.
# You may, however, use the string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

STR_TO_INT = Hash[("0".."9").zip((0..9))]

def string_to_integer(str)
  integer_arr = str.chars.map {|char| STR_TO_INT[char]}
  multipler = integer_arr.size
  number = 0

  integer_arr.each do |int|
   number += int * (10 ** (multipler -1))
    multipler -= 1
  end
  number
end

def string_to_signed_integer(str)

  if str[0] == "-" 
    new_str = str.delete_prefix("-")
    string_to_integer(new_str) * -1
  elsif str[0] == "+"
    new_str = str.delete_prefix("+")
    string_to_integer(new_str)
  else
    string_to_integer(str)
  end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100