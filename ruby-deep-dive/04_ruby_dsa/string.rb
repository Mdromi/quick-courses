# Creating a string
str = "Hello, world!"
# Accessing characters
puts str[7]  # Output: w
# Adding to a string
str += " How are you?"
# Removing from a string
str.slice!(0, 5)
# Iterating over characters
str.each_char do |char|
  puts char
end