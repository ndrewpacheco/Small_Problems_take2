# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product 
# of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

puts ">> Please enter an integer greater than 0:"
user_integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
user_computation = gets.chomp.downcase


if user_computation == "s"
  total_sum = (1..user_integer).reduce(:+) 
  puts "The sum of the integers between 1 and #{user_integer} is #{total_sum}."
end

if user_computation == "p"
  total_product = (1..user_integer).reduce(:*) 
  puts "The sum of the integers between 1 and #{user_integer} is #{total_product}."
end



