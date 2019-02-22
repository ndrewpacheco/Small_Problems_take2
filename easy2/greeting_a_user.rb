# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

puts "What is your name?"
username = gets.chomp

if username[-1] == "!"
  username.delete_suffix!("!").upcase!
  puts "HELLO #{username}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{username}."
end