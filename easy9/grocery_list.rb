# Write a method which takes a grocery list (array) 
#of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]



# new arr = []



  # arr[1].times do
# => new arr << arr[0] 

def buy_fruit(list)
  total_fruit = []

  list.each do |fruit|

    fruit[1].times do
      total_fruit << fruit[0]
    end
  end
  total_fruit
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]
