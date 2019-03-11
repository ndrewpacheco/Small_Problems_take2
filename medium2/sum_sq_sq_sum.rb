# Sum Square - Square Sum
# Write a method that computes the difference between 
# the square of the sum of the first n positive integers 
# and the sum of the squares of the first n positive integers.

# Examples:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# input: int
# output: int

# first thoughts:
# make two arrays. or iterate through the same array twice

# array: (1..int).to_a

# the first iteration will be to find the sq of the sum of the frist n positive ints

  # array reduce, squre it
  # sqof_sum = arr.reduce(:+)**2

# second iteration will be for the sum of the squares of the first n positive integers.
  #(1**2 + 2**2 + 3**2)

  # map array, square each element, and the reduce arr

  # sumof_sqs = arr.map {|num| num**2}.reduce(:+)

# return the difference

def sum_square_difference(num)

  arr = (1..num).to_a

  sqof_sum = arr.reduce(:+)**2
  sumof_sqs = arr.map {|int| int**2}.reduce(:+)

  sqof_sum - sumof_sqs

end

p sum_square_difference(3) == 22
p    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

