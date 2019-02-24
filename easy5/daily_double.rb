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





def crunch(str)
  idx = 0
  new_str = ""
  while idx <= str.length - 1
    new_str << str[idx] unless str[idx] == str[idx + 1]
    idx += 1
  end
new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') == ''
