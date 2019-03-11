def letter_percentages(string)
  array = string.split("")
  count = array.length.to_f
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  lower_count = 0
  upper_count = 0
  neither_count = 0
  array.each do |letter|
    if letter.match?(/[A-Z]/)
      upper_count += 1
    elsif letter.match?(/[a-z]/)
      lower_count += 1
    else 
      neither_count = 0
    end
  end
  
  hash[:lowercase] = (lower_count / count ) * 100
  hash[:uppercase] = (upper_count / count ) * 100
  hash[:neither] = (neither_count / count ) * 100
  hash
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
