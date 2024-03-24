# Creating Arrays:
# Using literal notation
array1 = [1, 2, 3, 4, 5]

# Using the Array.new constructor
array2 = Array.new
array2[0] = "apple"
array2[1] = "orange"
array2[2] = "banana"


# Accessing Elements:
fruits = ["apple", "orange", "banana"]
puts fruits[0]  # "apple"
puts fruits[1]  # "orange"
puts fruits[2]  # "banana"

# Adding Elements:
fruits << "grape"
fruits.push("kiwi")

# Removing Elements:
removed_fruit = fruits.pop
fruits.delete_at(1)  # Removes the element at index 1

# Iterating Over Elements:
# Use methods like each, map, or each_with_index for iteration.
fruits.each do |fruit|
    puts fruit
  end
  
# Array Length:
num_elements = fruits.length

# Checking for Element Existence:
has_apple = fruits.include?("apple")

# Concatenating Arrays:
more_fruits = ["pear", "mango"]
all_fruits = fruits + more_fruits
puts more_fruits[-1]

# Sorting and Reversing:
sorted_fruits = fruits.sort
reversed_fruits = fruits.reverse

# Slicing Arrays:
sliced_array = array[1..3]

# Multidimensional Arrays:
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matrix[1][2]  # Accessing element at row 1, column 2
