# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''


# split string up into chars
# assign an empty array to new_arr

#iterate over split string using map
# push each element into new arr twice
  # new_arr << element
   # new_arr << element

   # element + element


def repeater(str)
  
  str.chars.map do |char|
    char + char
  end.join

end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''


