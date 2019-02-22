puts "Please write word or multiple words:"
words = gets.chomp

num_of_chars = 0
words.split.each {|word| num_of_chars += word.size}

puts "There are #{num_of_chars} characters in '#{words}'."