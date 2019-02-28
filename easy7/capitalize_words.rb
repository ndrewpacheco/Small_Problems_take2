# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# input: string
# output: new_string

# string.split.map {|word| word[0].upcase }.join(" ")


def word_cap(str)
  
  str.split.map do |word| 
    if word[0].match?(/[a-zA-Z]/) 
      word.capitalize!
    else
      word
    end

  end.join(" ")
  
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language')== 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

