# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the argument. 

# If the argument has an odd length, you should return exactly one character. 
# If the argument has an even length, you should return exactly two characters.

# Examples:

# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'


# str.size.odd?
  
  # middle_index = str.size / 2 
  # str[middle_index]

# str.size.even?



def center_of(str)
  middle_index = str.size / 2 

  if str.size.odd?
  
    str[middle_index]
  else

    str[middle_index - 1, 2]
  end


end



p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
