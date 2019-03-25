# You have to create a method that takes in a string
# and outputs the same string processed in a particular way.
#
# The method should insert ONLY after the first occurence of each character of the input string
# all the alphabet letters that:
#
# -are NOT in the original string
# -come after the letter of the string you are processing
#
# Each added letter should be in uppercase,
# the letters of the original string will always be in lowercase.
#
# Example:
#
# input: "holly"
#
# missing letters: "a,b,c,d,e,f,g,i,j,k,m,n,p,q,r,s,t,u,v,w,x,z"
#
# output: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
#
# You don't need to validate input,
# the input string will always contain a certain amount of lowercase letters
# (min 1 / max 50).

# input: string (will want to split into an array / chars)
# output: processed string with insertions
# rules:
# - character occurs for the first time, append UPPERCASE chars for all subsequent characters
# - keep the original character from the original string

# data structures:
# array with original list of characters, and then appending to those items
  
# algorithm:
  
# - split up the string into an array of chars
# - iterate over that array, and for each character find the index of the character
#   - insert capitalised letters from a slice of the alphabet at index + 1

# # (possible hash count structure to deal with the repeated letters)
# for each loop round the characters, check if the character is in the hash already
#   if it is, just add the character to new_string
#   if it isn't, add the character plus the alphabet + update the hash

ALPHABET = "abcdefghijklmnopqrstuvwxyz"

def insert_missing_letters(string)
  chars = string.chars
  new_string = ""
  char_hash = Hash.new(0)
  chars.each do |char|
    if char_hash[char] >= 1
      new_string << char
      char_hash[char] += 1
      next
    else
      new_string << char
      index_val = ALPHABET.index(char)
      alphabet_string = ALPHABET[index_val+1..-1]
      alphabet_string = alphabet_string.chars.reject do |character|
        chars.include?(character)
      end.join.upcase
      new_string << alphabet_string
      char_hash[char] = 1
    end
  end
  new_string
end

p insert_missing_letters("holly") == "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"
p insert_missing_letters("fred") == "fGHIJKLMNOPQSTUVWXYZrSTUVWXYZeGHIJKLMNOPQSTUVWXYZdGHIJKLMNOPQSTUVWXYZ"
p insert_missing_letters("z") == "z"
p insert_missing_letters("efgh") == "eIJKLMNOPQRSTUVWXYZfIJKLMNOPQRSTUVWXYZgIJKLMNOPQRSTUVWXYZhIJKLMNOPQRSTUVWXYZ"