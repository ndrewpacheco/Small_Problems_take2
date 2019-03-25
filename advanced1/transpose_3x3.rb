# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

# Examples

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# input: an array of three nested arrays
# output: a new array wthe same amount arrays in it

# [[a,b,c],[a,b,c],[a,b,c]] turns into [[a,a,a], [b,b,b], [c,c,c]]

# [arr1, arr2, arr3] turns into [[arr1[0], arr2[0], arr3[0]], ... ]



def transpose(matrix)
  new_array = []
  counter = 0
  
  
  3.times do
    new_array << [matrix[0][counter], matrix[1][counter], matrix[2][counter]]
  
    counter += 1
  end
  
  new_array
  
end

  
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]