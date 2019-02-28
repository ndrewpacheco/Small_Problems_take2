# Write a method that returns a list of all substrings of a string. 

# The returned list should be ordered by where in the string the substring begins.

# This means that all substrings that start at position 0 should come first,

# then all substrings that start at position 1, and so on. 

# Since multiple substrings will occur at each position,
# the substrings at a given position should be returned in order from shortest to longest.


# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

  #new arr= []
#   count = 0

# orginal str goes through an iteration,

    # new_str = slice(count, str.size) 
    # new_arr << substrings_at_start(new_str)
    # count += 1

 # return new_arr
def substrings_at_start(str)
  new_arr = []

  1.upto(str.size) do |count|

  new_arr << str.slice(0, count)

  end
  new_arr
end
  
def substrings(str)
    new_arr = []
    

  0.upto(str.size - 1) do |count|
    new_str = str.slice(count, str.size)

    substrings_at_start(new_str).each do |substring|

      new_arr << substring

    end
  end
  new_arr
end




 p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde', 
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e'
 ]
