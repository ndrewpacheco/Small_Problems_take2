# Clean up the words
# Given a string that consists of some words 
#and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters
# replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, 
#you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '


# use squeeze for spaces
# go through string one by one, delete char if it matches the reqiurments [^a-zA-Z]

# if char is not alpha
  # char is " "
def cleanup(text)
  counter = 0
  size = text.size

  size.times do 

    text[counter] = " " if text[counter].match?(/[^a-zA-Z]/)
    counter += 1
  end
  text.squeeze("  "," ")
end
p cleanup("---what's my +*& line?")