number_arr = []
puts "==> Enter the 1st number:"
input = gets.chomp.to_i
number_arr << input
puts "==> Enter the 2nd number:"
input = gets.chomp.to_i
number_arr << input
puts "==> Enter the 3rd number:"
input = gets.chomp.to_i
number_arr << input
puts "==> Enter the 4th number:"
input = gets.chomp.to_i
number_arr << input
puts "==> Enter the 5th number:"
input = gets.chomp.to_i
number_arr << input
puts "==> Enter the last number:"
input = gets.chomp.to_i


if number_arr.include?(input)
  puts "The number #{input} appears in #{number_arr}."
else
  puts "The number #{input} does not appear in #{number_arr}."
end