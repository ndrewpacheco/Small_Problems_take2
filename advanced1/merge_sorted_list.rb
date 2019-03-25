require 'pry'
# Merge Sorted Lists
# Write a method that takes two sorted Arrays as arguments, 
#and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. 
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]


# firt test to see if any arrays are empty.
  # return arr2 if arr1.empty?
  # vice versa


# compare first index of arr1 to arr2.
  # push the smaller int into the result array
# up the index on that array and compare again

# if index is equal to arr.size, stop comparing that array
  # push the rest of the other arrays items 

# break loop when both indexes are maxed

def merge(arr_1, arr_2)
  arr1 = arr_1.clone
  arr2 = arr_2.clone


  return arr2 if arr1.empty?
  return arr1 if arr2.empty?

  max1 = arr1.size 
  max2 = arr2.size 

  idx1 = 0
  idx2 = 0

  results_array = []

  loop do

    if idx1 == max1
      results_array << arr2[idx2]
      idx2 += 1

    elsif idx2 == max2
      results_array << arr1[idx1]
      idx1 += 1
      
    elsif arr1[idx1] < arr2[idx2]

      results_array << arr1[idx1]
      idx1 += 1

    elsif arr2[idx2] < arr1[idx1]

      results_array << arr2[idx2]
      idx2 += 1

    elsif arr1[idx1] == arr2[idx2]

      results_array << arr1[idx1]
      idx1 += 1
      results_array << arr2[idx2]
      idx2 += 1

    end
    
    break if idx1 == max1 && idx2 == max2
  end
  results_array
end


p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])# == [1, 1, 2, 2, 3]
