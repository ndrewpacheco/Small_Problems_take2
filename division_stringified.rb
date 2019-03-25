# Have the method division_stringified(num1, num2) take both parameters being passed, divide num1 by num2, and return the result as a string with properly formatted commas.
#
# If an answer is only 3 digits long, return the number with no commas.
#
# Example: if num1 is 123456789 and num2 is 10000 the output should be "12,346".
#
# Note: 2 divided by 3 should return '1'

# p division_stringified(2, 3) == "1"
# p division_stringified(5, 2) == "3"
# p division_stringified(7, 3) == "2"
# p division_stringified(6874, 67) == "103"
# p division_stringified(503394930, 43) == "11,706,859"
# p division_stringified(1, 10) == "0"
# p division_stringified(100000, 1) == "100,000"

# input: 2 nums
# output: string

# num1 and num2, divide the two nums
# new_num = num1 / num2 

# change new num into a string
# format it with proper commas

    # if new_num is only three digits, return with no commas. 

# new_num.to_s
# slice method, or insert method to put commas in
# turn new_num into an array, find each third index from the last index
  # insert a comma


def division_stringified(num1, num2)
  new_num = ( num1.to_f / num2 ).round.to_s
  
  new_arr = []
  # new_num = new_num.chars.insert(-4, ",")
  # new_num.insert(-8, ",").join
  
  # push each char into new arr, if idx + 1 is divisible 3, push a comma as well
  new_num.chars.reverse.each_with_index do |char, idx|
    if ( idx + 1 ) % 3 == 0
    new_arr << char
      new_arr << ","
    else
      new_arr << char
    end
  end
  new_arr.pop if new_arr[-1] == ","
   new_arr.reverse.join
end

 p division_stringified(2, 3) == "1"
 p division_stringified(5, 2) == "3"
 p division_stringified(7, 3) == "2"
 p division_stringified(6874, 67) == "103"
 p division_stringified(503394930, 43) == "11,706,859"
 p division_stringified(1, 10) == "0"
 p division_stringified(100000, 1) == "100,000"