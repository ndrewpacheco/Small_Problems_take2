# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# str.chars.map
# case statement
# when the char matches /[a-z]/ then upcase
# when the char matches /[A-Z]/ then downcase
#else char
#join arr


def swapcase(str)
  str.chars.map do |char|

    
    if char.match?(/[a-z]/)
     char.upcase
    elsif char.match?(/[A-Z]/) 
      char.downcase
    else
     char
    end 

  end.join


end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
