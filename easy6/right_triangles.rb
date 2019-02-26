# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# loop a bunch string using 
# variable for white space, and variable for stars

# arg n

# n.times 
  # [] << " " 

 # n times
  # shift.[]
  # [] << ""


def triangle(n)
  arr = []

  n.times do 
    arr << " " 
  end
  
  n.times do
    arr.shift
    arr << "*"
    puts arr.join
  end
end

triangle(9)