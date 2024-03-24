# Creating Strings:
single_quoted = 'This is a single-quoted string.'
double_quoted = "This is a double-quoted string."

name = "John"
interpolated_string = "Hello, #{name}!"
puts interpolated_string

# String Concatenation:
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name

greeting = "Hello, "
greeting << "World!"
puts greeting

# String Length:
str = "Hello, Ruby!"
length = str.length

# Accessing Characters:
str = "Hello"
first_char = str[0]

# String Methods:
str = "   Hello, Ruby!   "
trimmed_str = str.strip            # Removes leading and trailing whitespaces
upcased_str = str.upcase           # Converts the string to uppercase
downcased_str = str.downcase       # Converts the string to lowercase
reversed_str = str.reverse         # Reverses the characters in the string

# Substring and Slicing:
str = "Hello, Ruby!"
substring = str.slice(0, 5)  # "Hello"

# String Equality:
str1 = "Hello"
str2 = "HELLO".downcase
is_equal = str1 == str2    # true

# String Conversion:
num_str = "123"
num = num_str.to_i         # Converts string to integer

# String Iteration:
str = "Ruby"
str.each_char do |char|
  puts char
end
