# In functional programming, higher-order functions are functions that take other functions as arguments or return them as results. Ruby’s Enumerable module provides several higher-order functions like map, select, and reduce.

# The map method transforms each element in a collection according to the block provided.
numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.map { |n| n ** 2 }
puts squared_numbers  # Output: [1, 4, 9, 16, 25]

# The select method filters elements in a collection according to the block provided.
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers  # Output: [2, 4]

# The reduce method reduces a collection to a single value according to the block provided.
numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) { |acc, n| acc + n }
puts sum  # Output: 15
