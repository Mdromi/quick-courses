# Creating an array
arr = [1, 2, 3, 4, 5]
# Accessing elements
puts arr[2]  # Output: 3
# Adding elements
arr.push(6)  # [1, 2, 3, 4, 5, 6]
arr << 7     # [1, 2, 3, 4, 5, 6, 7]
# Removing elements
arr.pop      # [1, 2, 3, 4, 5, 6]
arr.shift    # [2, 3, 4, 5, 6]
# Iterating over elements
arr.each do |element|
  puts element
end
# Multidimensional array (matrix)
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matrix[1][2]  # Output: 6