# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number.
# Print out all numbers between the two numbers, 
# except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# print out all numbers: 
  # array of a range
  # num1.upto(num2) 

#  if a number is divisible by 3 and 5, print "FizzBuzz".

# if a number is divisible by 5, print "Buzz",

# if a number is divisible by 3, print "Fizz",

  #else
  # num

def fizzbuzz(num1, num2)
  num1.upto(num2) do |count|
    if count % 3 == 0 && count % 5 == 0
      puts "FizzBuzz"
    elsif count % 5 == 0
      puts "Buzz"
    elsif count % 3 == 0
      puts "Fizz"
    else
      puts count
    end
  end
  return nil
end
fizzbuzz(1,15)