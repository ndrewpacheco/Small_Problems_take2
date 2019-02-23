# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'


# constant: array that holds all the suffixes
# if year % 100 == 0
#  result = century_number
# else
# (year / 100) + 1 = century_number

#unless last two digits are not 11,12,13 

def century(year)
  century_number = 0

  if year % 100 == 0
    century_number = year / 100  
  else
    century_number = (year / 100) + 1
  end 

  century_number = century_number.to_s
  if ["11","12","13"].any?(century_number[-2, 2])
    century_number << "th"
  elsif "3".match?(century_number[-1])
    century_number << "rd"
  elsif "2".match?(century_number[-1])
    century_number << "nd"
  elsif "1".match?(century_number[-1])
    century_number << "st"
  else
    century_number << "th"    
    
  end

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'



