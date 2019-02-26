# Write a method that takes a floating point number 
# that represents an angle between 0 and 360 degrees 
# and returns a String that represents that angle in degrees, minutes and seconds.
# You should use a degree symbol (°) to represent degrees,
# a single quote (') to represent minutes, and a double quote (") to represent seconds. 
#A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Note: your results may differ slightly depending on how you round values, 
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, 
#e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

# DEGREE = "\xC2\xB0"


# find a way to breakdown the decimals into minutes and seconds.
 # leading zeros when needed

 # degree_num: make into an int. take the whole numbers save it to a var. 
 # minutes_num: take away degree_num from input. * 60. Make into an int. 
 # seconds_num: similar to above.

# save the diffrent types of symbols into constants.

DEGREE = "\xC2\xB0"
MINUTES = "'"
SECONDS = "\""

def dms(angle)
  degree_num = angle.to_i
  degrees_to_minutes = ((angle - degree_num) * 60)
  minutes_num = degrees_to_minutes.to_i
  seconds_num = ((degrees_to_minutes - minutes_num) * 60).to_i

  

  
      minutes_num.to_s.rjust(2, "0") if minutes_num < 10
      minutes_num.to_s.rjust(2, "0") if minutes_num < 10
              
    


  degree_num + DEGREE + minutes_num + MINUTES + seconds_num + SECONDS
end
z

p dms(30) #== %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
 p dms(0) #== %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
