# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"


# def letter_changes(str)
#   alphabet = ('a'..'z').to_a

#   str.chars.map do |char|
#     upcase = true if upcase?(char)
    
#     if char.match?(/[a-zA-Z]/)
#       index = (alphabet.index(char.downcase) + 3) % 26
#       upcase ? alphabet[index].upcase : alphabet[index]
#     else
#       char
#     end
#   end.join
# end

# def upcase?(char)
#   char == char.upcase
# end
