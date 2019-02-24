# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.


def print_in_box(str)

  length = str.size
  puts "+-" + ( "-" * length ) + "-+"
  puts "| " + ( " " * length ) + " |"
  puts "| " + str + " |"
  puts "| " + ( " " * length ) + " |"
  puts "+-" + ( "-" * length ) + "-+"
end
print_in_box('')
print_in_box('To boldly go where no one has gone before.')