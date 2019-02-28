# Write a method that takes an Array of integers as input, 
# multiplies all the numbers together,
# divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. 
# Assume the array is non-empty.

# Examples:

# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# make sure the output number is a float to 3 decmials.. format("%.3f", num)
  

# total_product = 1 
# length = arr.size

# as each iteration of the array happens, total_product *= element

# average = total_product.to_f / length.to_f

# output = format("%.3f", average)
# "The result is #{output}"


def show_multiplicative_average(arr)
  total_product = 1.to_f
  length = arr.size
  
  arr.each {|element| total_product *= element }
  average = total_product / length
  
  output = format("%.3f", average)
  "The result is #{output}"
end


p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])

