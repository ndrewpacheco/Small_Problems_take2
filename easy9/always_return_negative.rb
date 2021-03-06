# Write a method that takes a number as an argument. 
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number.

# Examples;

# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# return negative num, unless num is < 1

def negative(num)

  num < 1 ? num : num * -1

end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
