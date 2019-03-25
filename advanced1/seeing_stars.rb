# Seeing Stars
# Write a method that displays an 8-pointed star in an nxn grid,
# where n is an odd integer that is supplied as an argument to the method. 

# The smallest such star you need to handle is a 7x7 grid.

# Examples

# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

# middle index variable, equal to num / 2
# initalize an array with whitespace x the num


# first arra is 0, mid index and -1 index with stars

# when whitespace  ( num - 3) divide by two, stop 


def star(num)
  mid_index = num / 2
  counter = num
  whitespace = ""
 
  loop do 
    stars_array = []
    counter.times do 
      stars_array << " "
    end
    
    stars_array[0], stars_array[counter / 2], stars_array[-1] = "*", "*", "*"
    counter -= 2
    puts whitespace + stars_array.join
    break if counter == 1
    whitespace << " "
  end 

  puts "*" * num

  
end

star(7)
