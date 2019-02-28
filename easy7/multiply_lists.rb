# Write a method that takes two Array arguments 
# in which each Array contains a list of numbers,
# and returns a new Array
# that contains the product of each pair of numbers 
# from the arguments that have the same index. 
# You may assume that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# input: 2 arrays
# output: 1 new array


def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |n, idx|
    new_arr << (n * arr2[idx])
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]