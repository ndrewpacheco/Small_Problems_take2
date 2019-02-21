# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. `
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# use a hash to keep track of each element
# go through each element, 
# if the element doesnt exist in hash, create new key with value 1
# else += 1 to key 

 vehicles = [
   'car', 'car', 'truck', 'car', 'SUV', 'truck',
   'motorcycle', 'motorcycle', 'car', 'truck'
 ]

def count_occurrences(arr)
  occurrences_hsh = {}
  arr.each do |element|
    if occurrences_hsh.has_key?(element)
      occurrences_hsh[element] += 1
    else
      occurrences_hsh[element] = 1
    end
  end
  occurrences_hsh.each do |k,v|

    puts "#{k} => #{v}"
  end
end



 count_occurrences(vehicles)