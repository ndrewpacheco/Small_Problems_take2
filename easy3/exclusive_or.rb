# The || operator returns a truthy value if either or both of its operands are
# truthy, a falsey value if both operands are falsey.
# The && operator returns a truthy value if both of its operands are 
# truthy, and a falsey value if either operand is falsey. 
# This works great until you need only one of two conditions to be truthy, 
# the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# def xor?(cond1, cond2)
#   if cond1 
#     if cond2
#       return false
#     else
#       return true
#     end
#   else
#     if cond2
#       return true
#     else
#       return false
#     end
#   end
# end

def xor?(cond1, cond2)
  return true if cond1 && !cond2
  return true if cond2 && !cond1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false