# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, 
#and ends with st, nd, rd, or th as appropriate for that number.

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

# first: calculate which century
# second: calculate which suffix to use


# if century_number last two digits are 11,12,13
    # century_number "th"
# century_number 

def century(year)
  century_number = if year % 100 == 0
                   year / 100
                 else
                  (year / 100) + 1
                end.to_s

  return century_number << "th" if ["11", "12", "13"].any?(century_number[-2,2])
  case century_number[-1]
    when "1" then century_number << "st"
    when "2" then century_number << "nd"
    when "3" then century_number << "rd"
    else century_number << "th"
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
