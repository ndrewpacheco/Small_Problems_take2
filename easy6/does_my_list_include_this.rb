# Write a method named include? 
# that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# use select to find 

def include?(arr, search_value)
  select_arr = arr.each {|element| return true if element == search_value }
  false
  
end

 p include?([1,2,3,4,5], 3) == true
 p include?([1,2,3,4,5], 6) == false
 p include?([], 3) == false
 p include?([nil], nil) == true
p include?([], nil) == false