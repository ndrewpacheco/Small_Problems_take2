# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten,
# eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# 

# map out original array to have each number in english 

 ENGLISH_NUMBERS = %w( zero one two three four five six seven eight nine ten
 eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)


 def alphabetic_number_sort(arr)
   
  # english_arr = arr.map {|num| ENGLISH_NUMBERS[num]}.sort
  # english_arr.map {|element| ENGLISH_NUMBERS.index(element) }


  arr.sort_by {|num| ENGLISH_NUMBERS[num]}
 end

 p alphabetic_number_sort((0..19).to_a)