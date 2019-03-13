# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared.
# If the first of the two elements is greater than the second, then the two elements are swapped.
# This process is repeated until a complete pass is made without performing any swaps; 
# at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without making any swaps; 
# at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm 
#as well as a minor optimization technique, see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument,
# and sorts that Array using the bubble sort algorithm as just described. 
# Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument.
# You may assume that the Array contains at least 2 elements.

# Examples

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


# input: array
# output: same array

# go through each pair in the index ie. arr[0] > arr[1] ? exchange : leave it the same 
# how to exchange?

# swap 
# if arr[n] > arr[n + 1] 
# swap_elemnt = arr.delete_at(n)

# arr insert at n + 1


def bubble_sort!(arr)
  sorted = false
  counter = 0
  
  length = arr.size - 1 
  

    length.times do 
    if arr[counter] > arr[counter + 1]
      # code
      swap_item = arr.delete_at(counter)
      arr.insert(counter + 1, swap_item)
    end
    counter += 1
  end
  
  
end


 array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]


