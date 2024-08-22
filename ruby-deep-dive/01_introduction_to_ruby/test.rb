def add(a, b)
  a + b
end

puts add(2, 3)          # Output: 5
puts add("Hello, ", "World!")  # Output: Hello, World!

5.times { puts "Hello" }
[1, 2, 3].map { |n| n * 2 }  # Output: [2, 4, 6]

class Greeting
  def say_hello
    "Hello, World!"
  end
end
greet = Greeting.new
puts greet.say_hello  # Output: Hello, World!