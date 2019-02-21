# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# array, to push 1 or 0

# loop, num will be counter.
# until num is 0, add either 1 or 0

def stringy(num)
  counter = num
  new_str = ""

  loop do
    new_str << "1"
    counter -= 1
    break if counter == 0

    new_str << "0"
    counter -= 1
    break if counter == 0
  end
  new_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'