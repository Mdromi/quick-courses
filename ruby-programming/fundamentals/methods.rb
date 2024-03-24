# Defining Methods:
# Method without parameters
def say_hello
    puts "Hello, World!"
end
  
# Method with parameters
def greet(name)
    puts "Hello, #{name}!"
end
  
# Method with a default parameter
def greet_with_default(name = "Guest")
    puts "Hello, #{name}!"
end
  
# Method with a variable number of arguments
def sum(*numbers)
    total = numbers.reduce(0, :+)
    puts "Sum: #{total}"
end

# Calling Methods:
say_hello           # Output: Hello, World!
greet("John")       # Output: Hello, John!
greet_with_default  # Output: Hello, Guest!
sum(1, 2, 3, 4)     # Output: Sum: 10

# Return Values:
def add(x, y)
    return x + y
end
  
result = add(3, 5)
puts result  # Output: 8

# Scope of Variables:
x = 10  # Global variable

def print_global_variable
    puts x  # Accessing the global variable
end
  
# print_global_variable  # Output: 10
  
# Block Parameters:
def execute_block
  puts "Start of method"
  yield
  puts "End of method"
end

execute_block do
  puts "Inside the block"
end
execute_block

# Private and Public Methods:
class MyClass
    def public_method
      puts "This is a public method"
    end
  
    private
  
    def private_method
      puts "This is a private method"
    end
end
  
# Method Aliases:
class MyClass
    def original_method
      puts "This is the original method"
    end
  
    alias_method :alias_method_name, :original_method
end
  