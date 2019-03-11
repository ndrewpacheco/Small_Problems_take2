def sum_or_product

puts " >> Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."

answer = gets.chomp.downcase


# sum will equal all numbers between 1 and answer. Use a range to find all the numbers, use reduce method to get sum
if answer == "s"
  result = (1..int).to_a.reduce(:+)
end
  
  if answer == "p"
  result = (1..int).to_a.reduce(:*)
end
  
puts " The sum of the integers between 1 and #{int} is #{result}."
end

sum_or_product