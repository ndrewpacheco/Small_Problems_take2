# Bubble Sort
# Bubble Sort is one of the simplest sorting algorithms available. 
# It isn't an efficient algorithm, but it's a great exercise for student developers.
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. 
# On each pass, each pair of consecutive elements is compared.
# If the first of the two elements is greater than the second, then the two elements are swapped.
# This process is repeated until a complete pass is made without performing any swaps;
# at that point, the Array is completely sorted.


# We can stop iterating the first time we make a pass through the array without making any swaps; 
# at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique,
# see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument, 
# and sorts that Array using the bubble sort algorithm as just described.
# Note that your sort will be "in-place";
# that is, you will mutate the Array passed as an argument. 
#You may assume that the Array contains at least 2 elements.

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


# compare each pair of if elements within the array
  # num1 > num2 ? exchange : keep the same

# go through each index of this, until the last index

# example: if the array's size is 5, go through 0,1,2,3
# arr[n] > arr[n+1] until n == size - 1

# do this loop over and over again untill there are no more swaps

# initaliaze a toggle variable to true 
# if the comparisoin equals to true, then toggle a variable to equal false

# at the end of each loop, test to see if the the toggle is false or not


# one loop to test all of the iteratins
# another loop to do each iteration


def bubble_sort!(arr)
  loop do
    complete = true
    n = 0 
    loop do 

  # num1 > num2 ? exchange : keep the same

    if arr[n] > arr[n + 1]
      arr[n], arr[n + 1] = arr[n + 1], arr[n]
      complete = false
    end
      break if n == ( arr.size - 2 )
      n += 1
    end
  break if complete
  end
 arr
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

