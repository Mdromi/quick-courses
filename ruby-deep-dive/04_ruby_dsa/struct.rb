# Defining a struct
Person = Struct.new(:name, :age)
# Creating a new struct instance
person = Person.new("Alice", 30)
# Accessing attributes
puts person.name  # Output: Alice
puts person.age   # Output: 30
# Modifying attributes
person.age = 31
puts person.age   # Output: 31