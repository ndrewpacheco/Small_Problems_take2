# Write a method that takes an array of strings,
# and returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# go through each word,
# split word into chars
# select only the constants. do this by seeing if each char matches with a vowel 

def remove_vowels(str)
  str.map do |word|

    word.chars.select {|char| char.match?(/[^aeiou]/i)}.join

  end
end

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']