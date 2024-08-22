class Animal
  def initialize(name)
    @name = name
  end
  def speak
    puts "Hello, my name is #{@name}."
  end
end

dog = Animal.new("Buddy")
puts dog.speak  # Output: Hello, my name is Buddy.