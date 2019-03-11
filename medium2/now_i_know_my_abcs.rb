# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to
# just those words that do not use both letters from any given block. 
# Each block can only be used once.

# Write a method that returns true if the word passed in as an argumen
#t can be spelled from this set of blocks, false otherwise.

# Examples:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# input: string
# output is boolean

# string is not case sensitive

# first instincts:


# how to configure blocks. 

# hash for block
# {
#   block: ["B","O"]
#   count: 0
# }

 
  # nest each hash into a array

  # go through each char in the string, find the matching block, plus 1 to it's count
  # rmemeber # string is not case sensitive

  # iterate through array, if all the counts are less than 2, return true, else false



def block_word?(word)

blocks = [
{ letters: ["B","O"], count: 0 }, { letters: ["X","K"], count: 0 }, { letters: ["D","Q"], count: 0 },
{ letters: ["G","T"], count: 0 }, { letters: ["R","E"], count: 0 }, { letters: ["F","S"], count: 0 },
{ letters: ["V","I"], count: 0 }, { letters: ["L","Y"], count: 0 }, { letters: ["Z","M"], count: 0 },
{ letters: ["C","P"], count: 0 }, { letters: ["N","A"], count: 0 }, { letters: ["J","W"], count: 0 },
{ letters: ["H","U"], count: 0 }
]
  word.upcase.each_char do |char|

    blocks.each do |block|
      block[:count] += 1 if block[:letters].any?(char)
    end
  end

  blocks.each do |block|

    return false if block[:count] > 1
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

