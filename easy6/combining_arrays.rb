# Write a method that takes two Arrays as arguments, 
# and returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, 
# even if there are duplicates in the original Arrays.

# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# uniq method to take out duplicates
# new arr, push items into it
  # arg1.each .. new_Arr << element, same with arg2. then call uniq! on the array


def merge(arr1, arr2)
  new_arr = []

  arr1.each {|element| new_arr << element }
  arr2.each {|element| new_arr << element }
  new_arr.uniq

end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]