class Calculator
    # ... (previous code)
  
    def add(x, y)
      x + y
    end
  
    def subtract(x, y)
      x - y
    end
  
    def multiply(x, y)
      x * y
    end
  
    def divide(x, y)
      y.zero? ? "Cannot divide by zero" : x.to_f / y
    end
end
  
calculator = Calculator.new

puts "Welcome to the Calculator App!"

loop do
  puts "\nEnter operation (+, -, *, /) or 'exit' to quit:"
  operation = gets.chomp.downcase

  break if operation == 'exit'

  puts "Enter first number:"
  num1 = gets.chomp.to_f

  puts "Enter second number:"
  num2 = gets.chomp.to_f

  case operation
  when '+'
    result = calculator.add(num1, num2)
  when '-'
    result = calculator.subtract(num1, num2)
  when '*'
    result = calculator.multiply(num1, num2)
  when '/'
    result = calculator.divide(num1, num2)
  else
    result = "Invalid operation"
  end

  puts "Result: #{result}"
end

puts "Thank you for using the Calculator App!"
