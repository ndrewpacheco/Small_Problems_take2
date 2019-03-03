# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *


# we know that each line will have 9 chars
# two factors: whitespace and stars

# maneuvering between stars and whitesapce for each line

# once the line is all full of stars, we can work in opposite ordr

# how to get whitespace var: 
# inital white space var should be " " * (n / 2)
  # each iteration, minus 1 until 0






STAR = "*"
WHITESPACE = " "

def diamond(n)
  return puts STAR if n == 1
  whitespace_count = (n / 2)
  star_count = 1

  loop do
    puts ( WHITESPACE * whitespace_count )  + ( STAR * star_count )
    
    break if whitespace_count == 0
    whitespace_count -= 1
    star_count += 2
  end


  loop do
    whitespace_count += 1 
    star_count -= 2
    puts ( WHITESPACE * whitespace_count ) + ( STAR * star_count )
    break if star_count == 1
  end



end

diamond(1)