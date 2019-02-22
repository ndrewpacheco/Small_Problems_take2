# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

age = rand(20..200)

puts "Name?"
first_name = gets.chomp
first_name = "Teddy" if first_name.empty?

puts "#{first_name} is #{age} years old!"