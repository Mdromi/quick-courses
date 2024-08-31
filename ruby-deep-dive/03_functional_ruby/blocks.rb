# A block is a piece of code that can be passed into methods as an argument. It’s enclosed within either curly braces {} or do..end keywords. Blocks are a powerful feature in Ruby, allowing you to encapsulate behavior and pass it around like an anonymous function or lambda in other programming languages.

def example_method(&block)
  puts "Start of method"
  block.call if block
  puts "End of method"
end
example_method { puts "Inside the block" }
# Start of method
# Inside the block
# End of method