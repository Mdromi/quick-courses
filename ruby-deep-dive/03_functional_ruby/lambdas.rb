# Lambdas: Enforce the number of arguments strictly.
# Lambdas: When a return statement is executed inside a lambda, it returns from the lambda itself.

# Argument Handling:
my_lambda = lambda { |a, b| puts "a: #{a}, b: #{b}" }
my_lambda.call(1, 2)      # Output: a: 1, b: 2
# my_lambda.call(1)         # ArgumentError: wrong number of arguments (given 1, expected 2)
# my_lambda.call(1, 2, 3)    # ArgumentError: wrong number of arguments (given 3, expected 2)

# Return Behavior:
def example_method
  my_lambda = lambda { return "Returning from lambda" }
  result = my_lambda.call
  puts result #
  return "Returning from method"
end
puts example_method  # Output: "Returning from method"

# Higher-Order Functions
def apply_twice(func)
  func.call
  func.call
end

say_hello = -> { puts "Hello!" }
apply_twice(say_hello)