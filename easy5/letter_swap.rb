# Given a string of words separated by spaces, 
# write a method that takes this string of words
# and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter,
# and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'


# split string by words. shift the first letter, pop last letter, save them to 2 variables
# push, unshift

def swap(str)
  str.split.map do |word|
   arr_of_letters = word.chars

   first_letter = arr_of_letters.shift
   arr_of_letters << first_letter

   second_letter = arr_of_letters.delete_at(-2)
   arr_of_letters.prepend(second_letter).join
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
