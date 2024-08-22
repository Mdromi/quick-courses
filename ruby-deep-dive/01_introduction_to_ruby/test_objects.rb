# Checking the class of an integer
puts 42.class         # Output: Integer

# Checking the class of the class Integer
puts 42.class.class   # Output: Class

# Checking the class of the class Class
puts 42.class.class.class   # Output: Class

# Checking the superclass of Integer
puts 42.class.superclass   # Output: Numeric

# Checking the top-level parent class of Integer
puts 42.class.superclass.superclass.superclass   # Output: BasicObject