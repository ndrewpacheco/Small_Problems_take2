# In the easy exercises, we worked on a problem where we had to 
# count the number of uppercase and lowercase characters,
# as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string,
# and then returns a hash that contains 3 entries: 
# one represents the percentage of characters in the string that are lowercase letters, 
# one the percentage of characters that are uppercase letters, 
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# input: string
# output: 

# percentage =  {
#   downcase: 
#   upcase:
#   neither:
# }



# find certain percentage based on the amount of chars in the string
  # find how many lowercase chars upper case chars, and neither
  # initialize variables:
    # total amount of chars 
        #total_amount = str.chars.size
    # amount of lower case:
      # find all the lower/upper/neitheer case variables 
      # downcase_amount = 0
       # lowercase_amount = 0
        #neither_amount = 0

        #str.each_char do |char|

        #downcase += 1 if char.match?(/[a-z]/)
        #end 


def letter_percentages(str)
  total_amount = str.chars.size.to_f
  downcase_amount = 0
  upcase_amount = 0
  neither_amount = 0

  str.each_char do |char|

    if char.match?(/[a-z]/)
      downcase_amount += 1 
    elsif char.match?(/[A-Z]/)
     upcase_amount += 1 
    else
      neither_amount += 1
    end
  end 
  
  {
    lowercase: (( downcase_amount / total_amount ) * 100),
    uppercase: (( upcase_amount / total_amount ) * 100),
    neither: (( neither_amount / total_amount ) * 100)
  }
end






p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }