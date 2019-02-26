# Write a method that takes an Array as an argument,
#  and returns two Arrays (as a pair of nested Arrays) 
# that contain the first half and second half of the original Array, respectively.

#  If the original array contains an odd number of elements,
#  the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]


# arr.size will be used to dictate where to split arg_arr

# if arr.size even, then this
# arr.size / 2  =  half_length 

# (odd size)
#  (arr.size / 2) + 1 =  half_length 


 #loop method 
 # => counter var
 # the arg_arr and push element into a new one
 # arg[counter] into new_arr
 #counter += 1, break when counter + 1 == half_length



 #loop method 
 # => counter var
 # the arg_arr and push element into a new one
 # arg[counter] into new_arr
 #counter += 1, ### # break when counter + 1 == length
 
 
 # 

def halvsies(arr)
  arr1 = []
  arr2 = []
  counter = 0

  length = arr.size
  half_length = length / 2  if length.even?
  half_length = ( length / 2 ) + 1 if length.odd?

  loop do 
    break if length < 1
    arr1 << arr[counter]
    counter += 1
    break if counter == half_length
  end

  loop do 
    break if length < 2
    arr2 << arr[counter]
    counter += 1
    break if counter == length
  end

  [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

