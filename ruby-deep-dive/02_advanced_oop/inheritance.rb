# Inheritance is a fundamental concept in object-oriented programming where a class can inherit properties and methods from another class. This helps in code reuse and establishing a hierarchical relationship between classes.

class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def speak
    "Some sound"
  end
end
class Dog < Animal
  def speak
    "Woof!"
  end
end
class Cat < Animal
  def speak
    "Meow!"
  end
end
dog = Dog.new("Buddy")
cat = Cat.new("Whiskers")
puts "#{dog.name} says: #{dog.speak}"  # Output: Buddy says: Woof!
puts "#{cat.name} says: #{cat.speak}"  # Output: Whiskers says: Meow!