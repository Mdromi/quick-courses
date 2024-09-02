# Creating a hash
char_count = { 'a' => 1, 'b' => 2, 'c' => 3 }
# Accessing elements
puts char_count['b']  # Output: 2
# Adding elements
char_count['d'] = 4
# Removing elements
char_count.delete('a')
# Iterating over elements
char_count.each do |key, value|
  puts "#{key}: #{value}"
end