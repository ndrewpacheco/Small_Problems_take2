# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument 
# and returns a new string that contains the value of the original string 
# with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# go through each index of the string
  # if the next char is the same as the current one, dont use it,
  # else push the char into newstring


  # new_str = "" 
  # counter to help with iterating
  # char[counter] == char[counter + 1]

  # break if counter == str.size


def crunch(str)
  new_str = ""
  counter = 0

  loop do
    new_str << str[counter] unless str[counter] == str[counter + 1]
    
    break if counter == str.size
    counter += 1
  end
  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
