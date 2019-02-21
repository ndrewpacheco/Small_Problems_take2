# Reverse It (Part 2)
# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS


def reverse_words(str)
  new_arr = str.split.map do |word|
    if word.size > 4
      word.reverse
    else
      word
    end
  end
  new_arr.join(" ")
end

 puts reverse_words('Professional')          # => lanoisseforP
 puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
 puts reverse_words('Launch School')         # => hcnuaL loohcS
