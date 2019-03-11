# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides
# must be greater than the length of the longest side,
# and all sides must have lengths greater than 0:

# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid 
# depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Examples:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid


# validation: 
# triangle_sides = [x,y,z].sort # will put array from shortest to longest

# short_sides_sum = triangle_sides[0], triangle_sides[1]
# return :invalid if short_sides_sum < triangle_sides[2] || triangle_sides.include?(0)



# equilateral [x, y, z].all?(x)

# isosceles x == y || y == z || x == z

# scalene  x != y && y != z && x != z


def triangle(x,y,z)
  triangle_sides = [x,y,z].sort # will put array from shortest to longest

  short_sides_sum = triangle_sides[0] + triangle_sides[1]
  
  return :invalid if short_sides_sum < triangle_sides[2] || triangle_sides.include?(0)

  return :equilateral if [x, y, z].all?(x)

  return :isosceles if x == y || y == z || x == z

  return :scalene if x != y && y != z && x != z

end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

