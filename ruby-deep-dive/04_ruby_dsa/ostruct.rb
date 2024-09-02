require 'ostruct'
# Creating an OpenStruct
person = OpenStruct.new(name: "Alice", age: 30)
# Accessing attributes
puts person.name  # Output: Alice
puts person.age   # Output: 30
# Modifying attributes
person.age = 31
puts person.age   # Output: 31