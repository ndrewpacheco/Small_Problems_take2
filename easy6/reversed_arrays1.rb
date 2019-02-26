# Write a method that takes an Array as an argument,
# and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

# using destructive methods, such as push/pop, unshift/shift

# list, method_arr.
# pop all items in list to the method array
  # push each item from method array into list array


def reverse!(arr)
  new_arr = []
  length = arr.size

  length.times do 
    item = arr.pop
    new_arr << item
  end
  
  new_arr.each {|element| arr << element}
  arr
end

