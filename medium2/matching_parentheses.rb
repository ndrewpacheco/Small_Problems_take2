require 'pry'
# Write a method that takes a string as argument, 
# and returns true if all parentheses in the string are properly balanced, false otherwise. 
#To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).

# split string into array of chars
# select only the brackets

# [ "(", "(", ")", "(", ")", ")" ] == true
# ['(', '(', ')', ')', '(', ')', ')'] == false
# [")", "("] == false

# find first open bracket, then find first close bracket,
# make sure close brack index is larger then the open brackets 


# if theres a match, delete them from array
# repeat untill there can be no more matches

  # a match is ["(", ")"]
  # if match does not equal that, then stop loop

# if the array is empty, it is balanced

  # return true if brackets_array.empty?






def balanced?(str)
  brackets_array = str.chars.select {|char| char == "(" || char == ")"}

  loop do
   
    open_bracket = brackets_array.index("(")
    close_bracket = brackets_array.index(")")
    

      break if open_bracket.nil? || close_bracket.nil? 
    
        brackets_array[open_bracket] = " " if close_bracket > open_bracket

        brackets_array[close_bracket] = " " 
      
      
  end

  brackets_array.all?(" ")


end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
