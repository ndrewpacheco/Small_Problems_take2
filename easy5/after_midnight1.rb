# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
# Disregard Daylight Savings and Standard Time and other complications.

# positive integer:

# 1440 mins in a day

# num / 60 gets hrs
# num % 60 gets minutes

# if number is greater than 1440, then..
# num % 1440, use this result with the rest of algo

def time_of_day(num)
  if num >= 0
    num = num % 1440 if num > 1440
  elsif num < -1440
      num = num % 1440
  else
    num = 1440 + num
  end

   hours = num / 60
  minutes = num % 60

  format('%02d:%02d', hours, minutes)

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"