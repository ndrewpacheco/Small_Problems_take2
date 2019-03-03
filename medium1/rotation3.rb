# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, 
#and returns the maximum rotation of that argument.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845


  # rotations = starting_num.size

# 735291 # starting_num
  # rotate_rightmost_digits(num, rotations)

# 352917 # rotate first digit
    # rotations -= 1
  # rotate_rightmost_digits(num, 5)

# 329175 # rotate second
# 321759 #  third
# 321597 # fourth
# 321579 # 5th

def max_rotation(num)

  rotations = num.to_s.size

  while rotations > 1
    num = rotate_rightmost_digits(num, rotations)
    rotations -= 1
  end
  num
end

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

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845



