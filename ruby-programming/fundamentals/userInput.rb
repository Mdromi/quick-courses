# Simple user input example
puts "What's your name?"
user_name = gets.chomp
puts "Hello, #{user_name}!"

# Numeric user input example
puts "Enter a number:"
user_input = gets.chomp.to_i
result = user_input * 2
puts "Twice of #{user_input} is #{result}."

# String input example
puts "What's your favorite color?"
favorite_color = gets.chomp
puts "Your favorite color is #{favorite_color.capitalize}."

# Boolean input example
puts "Are you a Ruby programmer? (yes/no)"
is_ruby_programmer = gets.chomp.downcase == 'yes'
puts "You are a Ruby programmer: #{is_ruby_programmer}."


# Multiple inputs example
puts "Enter your first and last name (separated by a space):"
full_name = gets.chomp.split
first_name, last_name = full_name

puts "Your first name is #{first_name} and your last name is #{last_name}."
