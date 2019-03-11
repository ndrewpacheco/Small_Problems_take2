require 'date'
# Write a method that returns the number of Friday the 13ths in the year given by an argument. 
# You may assume that the year is greater than 1752 
#(when the United Kingdom adopted the modern Gregorian Calendar)
# and that it will remain in use for the foreseeable future.


# Examples:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2


# get access to all the fridays in the year, and see if they match 13

# find the 13th day of each month
#  if it matches friday, plus one to the counter

# how to  find the 13th day of each month:


def friday_13th(year)
  month = 1
  counter = 0
  loop do
    date = Date.new(year, month, 13)
    month += 1
    counter += 1 if date.friday?
    break if month > 12
  end
  counter 
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

