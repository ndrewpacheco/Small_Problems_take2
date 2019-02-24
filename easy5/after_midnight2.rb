# As seen in the previous exercise, 
# the time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though; 
#it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# disect the string. take first two chars and last two.
  # times first two by 60 to get the hours worth of minutes
  # minutes are mintues.
  # add the two together
MINUTES_IN_AN_HOUR = 60
MINUTES_IN_A_DAY = 1440

def after_midnight(time)
  minutes_by_hour = time[0,2].to_i * MINUTES_IN_AN_HOUR
  minutes_by_minutes = time[-2,2].to_i
  total_minutes = minutes_by_minutes + minutes_by_hour


  total_minutes = 0 if total_minutes == MINUTES_IN_A_DAY
  total_minutes  
end

def before_midnight(time)
  minutes_by_hour = time[0,2].to_i * MINUTES_IN_AN_HOUR
  minutes_by_minutes = (time[-2,2].to_i)
  total_minutes = minutes_by_minutes + minutes_by_hour

  total_minutes = MINUTES_IN_A_DAY - total_minutes

  total_minutes = 0 if total_minutes == MINUTES_IN_A_DAY
  total_minutes  
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
