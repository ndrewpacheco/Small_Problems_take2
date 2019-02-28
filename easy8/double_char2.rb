# Write a method that takes a string,
#  and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# regex for consonants /[b-df-hj-np-tv-z]/
# new str

# iterate through string
# if char =~ consonants
    # new_str << repeater(char)
# else char

# return new str

CONSONANTS = /[b-df-hj-np-tv-z]/i

def double_consonants(str)
  new_str = ""
  
  str.each_char do |char|
    if char =~ CONSONANTS
      new_str << repeater(char)
    else
      new_str << char
    end
  end
  new_str
end

def repeater(str)
  
  str.chars.map do |char|
    char + char
  end.join

end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

