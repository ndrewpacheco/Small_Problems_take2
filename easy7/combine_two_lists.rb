# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# input: 2 arrays
# output: 1 array
# counter

# get length
# length.times  method
  # << arr1[0]
#   << arr2[0]
# counter += 1



def interleave(arr1, arr2)
  counter = 0
  length = arr1.size
  new_arr = []
  
  length.times do
      new_arr << arr1[counter]
      new_arr << arr2[counter]
      counter += 1
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])