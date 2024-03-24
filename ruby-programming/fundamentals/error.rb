# Exceptions:

# Attempting to divide by zero raises a ZeroDivisionError
# result = 10 / 0

# Rescue Clause:
begin
    result = 10 / 0
  rescue ZeroDivisionError
    puts "Cannot divide by zero."
end
  
# Multiple Rescue Clauses
begin
    result = 10 / 0
  rescue ZeroDivisionError
    puts "Cannot divide by zero."
  rescue StandardError
    puts "An error occurred."
end

# Ensure Clause:
# The ensure clause is used to specify code that will be executed whether an exception occurs or not. It is often used for tasks such as resource cleanup.
begin
    file = File.open("example.txt", "r")
    # File operations go here
  rescue StandardError
    puts "An error occurred."
  ensure
    file.close if file
end

# Raising Exceptions:
# You can manually raise exceptions using the raise keyword. This is useful when you want to signal an error in your code.
def divide(x, y)
    # raise "Cannot divide by zero" if y.zero?
    raise "Cannot divide by zero" if y == 0
    x / y
end
  
# result = divide(10, 0)

# Custom Exceptions:
class CustomError < StandardError
end

def example
  raise CustomError, "This is a custom error."
end

begin
  example
rescue CustomError => e
  puts "Caught custom error: #{e.message}"
end

  
#  Retry and Redo:
attempt = 0
begin
  result = 10 / rand(2)
rescue ZeroDivisionError
  attempt += 1
  puts attempt
  retry if attempt < 3
end
