# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it does backwards.

# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; 
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
# In addition, assume that single characters are not palindromes.

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]


#
# How do we know itis a palindrome? 

# str.reverse == str  && str.size > 1 ?

def palindrome?(str)
 str.reverse == str  && str.size > 1 

end


#substrings(str).select {|item| item.palindrome?}
def palindromes(str)
  substrings(str).select {|item|  palindrome?(item) }
end


def substrings_at_start(str)
  new_arr = []

  1.upto(str.size) do |count|

  new_arr << str.slice(0, count)

  end
  new_arr
end
  
def substrings(str)
    new_arr = []
    

  0.upto(str.size - 1) do |count|
    new_str = str.slice(count, str.size)

    substrings_at_start(new_str).each do |substring|

      new_arr << substring

    end
  end
  new_arr
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


