# Sum of Digits
# Write a method that takes one argument, a positive integer,
#  and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs 
#(while, until, loop, and each).

 
# divide num by 10, and store result in a variable

# times result by ten and take away from num


def sum(num)
  total_sum = 0
  num.to_s.chars.map {|element| total_sum += element.to_i }
  total_sum
end

# def sum(num)
#   num.to_s.chars.map(&:to_i).reduce(:+)
# end

 puts sum(23) == 5
 puts sum(496) == 19
 puts sum(123_456_789) == 45



