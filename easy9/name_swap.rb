# Write a method that takes a first name, 
# a space, and a last name passed as a single String argument, 
# and returns a string that contains the last name, a comma, a space, and the first name.

# Examples

# swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(full_name)

  first_name = full_name.split[0]
  last_name = full_name.split[1]

  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
