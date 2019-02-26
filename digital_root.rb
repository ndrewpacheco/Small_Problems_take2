# Create a digital root function.
# A digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n.
# If that value has two digits,
# continue reducing in this way until a single-digit number is produced.
# This is only applicable to the natural numbers.
#
# Here's how it works:
# digital_root(16)
# => 1 + 6
# => 7
#
# digital_root(942)
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6
#
# digital_root(132189)
# => 1 + 3 + 2 + 1 + 8 + 9
# => 24 ...
# => 2 + 4
# => 6
#
# digital_root(493193)
# => 4 + 9 + 3 + 1 + 9 + 3
# => 29 ...
# => 2 + 9
# => 11 ...
# => 1 + 1
# => 2

# arg.to_s 
# split into characters
# iterate through string, char back into integer
 # var: total sum. add each integer into sum. return sum




# def digital_root(num)
#   return num if num < 10
#   total_sum = 0
#   num_into_str = num.to_s
  
#   num_into_str.chars.each do |char|
#     char_into_int = char.to_i
#     total_sum += char_into_int
#   end
#   digital_root(total_sum)
# end

def digital_root(num)
  return num if num < 10
  new_num = num.digits.sum
  digital_root(new_num)
end

p digital_root(16) #== 7
p digital_root(942) #== 6
p digital_root(132189) #== 6
p digital_root(493193) #== 2