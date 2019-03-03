require "pry"
# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches and toggle every one of them. 
# You go back to the beginning, and on this second pass,
# you toggle switches 2, 4, 6, and so on. 

#On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 

#You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


# input is an integer, n
# output is an array

# through each repetition, light switches are turned on depending on mulitple

# multiple is += 1 each repetition
  

  # array, initalized:
  # if n is 5, ["off","off","off","off","off"]

  # round 1:
  #["on","on","on","on","on"]


# how is multipler going to work?
  
  # n.times do |multiple|

  # index that are multiples of multiple

    # arr.each_with_index do |switch, idx|

    #   toggle switch if idx % multiple == 0

    #
  # => end



# toggle => switch between "on" and "off"

# two constants 

ON = "on"
OFF = "off"

def toggle(switch)

 return OFF if switch == ON
 return ON if switch == OFF 
end

def lightswitches(n)
  lights_arr = []
  n.times do 
    lights_arr << OFF
  end
  
  n.times do |multiple|
  #binding.pry
  # index that are multiples of multiple

    lights_arr.each_with_index do |switch, idx|

    lights_arr[idx] = toggle(switch) if (idx + 1) % ( multiple + 1 ) == 0

    end
  end

  index_arr = []
  lights_arr.each_with_index {|switch, idx| index_arr << idx + 1 if switch == ON}
  index_arr
end


p lightswitches(5)