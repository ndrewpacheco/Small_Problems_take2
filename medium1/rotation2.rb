# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.



# turn to array:  
#  num_arr = num.to_s.chars

# find out how many elements we are working with,
  # slice array based on rotations
  # turn rotations negative? ie. slice(-rotation, rotation)
    
    #sliced_num = num_arr.slice(-rotation, rotation)

    #num_arr << rotatte_array(sliced_num)
    # what will this return? May need to use flatten


    # join.to_i


def rotate_array(arr)
  new_arr = arr.clone
  moving_element = new_arr.shift 
  new_arr << moving_element

end


def rotate_rightmost_digits(num, rotations)
  num_arr = num.to_s.chars
  sliced_num = num_arr.slice!(-rotations, rotations)
  num_arr << rotate_array(sliced_num)
  num_arr.flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

