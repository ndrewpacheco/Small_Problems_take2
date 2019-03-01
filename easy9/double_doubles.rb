# A double number is a number with an even number of digits
# whose left-side digits are exactly the same as its right-side digits. 

# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; double numbers should be returned as-is.

# Examples:

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# Note: underscores are used for clarity above.
# Ruby lets you use underscores when writing long numbers;
# however, it does not print the underscores when printing long numbers. 
# Don't be alarmed if you don't see the underscores when running your tests.

# if number is not a double number
  # return the number * 2

# if it is a double number
  # return number

# how do find out if its a double number?

  # str = num.to_s
# str.size.odd? then not a double number 


  # test for double number: 
#   arr = str.chars 
  # midpoint = str.size / 2 
  # divide the array using the middle point

  # new_arr = arr.slice!(0, midpoint)
  # 
  

# convert num to string
# test for odd or even str.size

# if str is even, test for double number



def twice(num)
  
  return num * 2 if str.size.odd?

  str = num.to_s
  arr = str.chars
  midpoint = str.size / 2

  new_arr = arr.slice!(0, midpoint)

  new_arr == arr ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
