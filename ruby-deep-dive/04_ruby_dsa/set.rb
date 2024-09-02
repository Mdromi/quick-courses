require 'set'
# Creating a set
set = Set.new([1, 2, 3, 4, 5])
# Adding elements
set.add(6)
# Removing elements
set.delete(2)
# Checking membership
puts set.include?(3)  # Output: true
# Iterating over elements
set.each do |element|
  puts element
end