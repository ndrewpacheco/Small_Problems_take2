# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# Examples

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }



# init letter_case_count = hash with the three keys, values assign 0 
# go through each char
# see if the char match with the right casing
  # regex

# add 1 to whiwch case it is.
# return out the letter_case hash

def letter_case_count(str)
  letter_case_hash = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
    }
  
  str.each_char do |char|
  
    
    # letter_case_hash[:uppercase] += 1 if char.match?(/[A-Z]/)
    
    case char
      when /[A-Z]/ then letter_case_hash[:uppercase] += 1
      when /[a-z]/ then letter_case_hash[:lowercase] += 1
      else  letter_case_hash[:neither] += 1
    end
      
    
  end
  
  letter_case_hash
    
end
  

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


