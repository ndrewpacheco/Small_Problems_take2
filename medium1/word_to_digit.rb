# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# make a constant, NUMBERS: array with "word" => number


# ITERAate through constant, find any matching words that match with NUMBERS array

# replace it with that index



NUMBERS =['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] 

def word_to_digit(str)

  NUMBERS.each_with_index do |number_word, idx|

    str.gsub!(number_word, idx.to_s )
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'