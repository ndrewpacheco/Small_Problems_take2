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

# p digital_root(16) #== 7
# p digital_root(942) #== 6
# p digital_root(132189) #== 6
# p digital_root(493193) #== 2

# num turn to a string, chars, and then turn each char into an int. take the sum of the array 

# sum = num.to_s.chars.map {|char| char.to_i }.sum


# if the sum is two digits or larger,  repeat the proccess above, else return the sum
# if sum > 9, digital_root(sum), else sum





def digital_root(num)
  sum = num.to_s.chars.map {|char| char.to_i }.sum
  if sum > 9
    digital_root(sum)
  else
    sum
  end
end


 p digital_root(16) == 7
 p digital_root(942) == 6
 p digital_root(132189) == 6
 p digital_root(493193) == 2


