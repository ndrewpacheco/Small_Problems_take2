# Write a method that returns a list of all substrings of a string 

# that start at the beginning of the original string. 

# The return value should be arranged in order from shortest to longest substring.






# Examples:


# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



# new_arr = []

# 1.upto(str.size) do |count|

# new_arr << str.slice(0, count)


# end


def substrings_at_start(str)
  new_arr = []

  1.upto(str.size) do |count|

  new_arr << str.slice(0, count)

  end
  new_arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



# sort the items