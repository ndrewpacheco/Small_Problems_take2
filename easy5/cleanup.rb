# Given a string that consists of some words and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters 
# replaced by spaces.
# If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result
# (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# split string usings chars. 
# go through each element, if they dont match alpha chars, replace with a " "

# join, then split by " "

# if element before this one is the same, delete it
def cleanup(str)
  str.gsub!(/[^a-z]/, " ")
  while str.include?('  ')
    str.gsub!('  ', ' ')
  end
str
end

p cleanup("---what's my +*& line?")