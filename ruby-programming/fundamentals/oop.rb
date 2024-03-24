# Defining a class
class Dog
  # Constructor method
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Instance method
  def bark
    puts "Woof, woof!"
  end

  # Accessor methods (getters)
  def name
    @name
  end

  def age
    @age
  end

  # Accessor methods (setters)
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

# Creating an instance of the Dog class
my_dog = Dog.new("Buddy", 3)

# Using methods on the object
my_dog.bark  # Output: Woof, woof!
puts my_dog.name  # Output: Buddy
puts my_dog.age  # Output: 3

# Modifying object attributes using setters
my_dog.name = "Max"
my_dog.age = 4
puts my_dog.name  # Output: Max
puts my_dog.age  # Output: 4


# attr_accessor
class Book
    attr_accessor :title, :author, :page
end

book1 = Book.new()
book1.title = "Book 1"
book1.author = "Author 1"
book1.page = 400

puts book1.title
puts book1.author
puts book1.page

#  Inheritance:
class Puppy < Dog
  # Additional methods or overrides can be added here
end

my_puppy = Puppy.new("Charlie", 1)
puts my_puppy.name  # Output: Charlie
my_puppy.bark  # Output: Woof, woof!

# Encapsulation:

# 7. Polymorphism:
class Cat
  def speak
    puts "Meow!"
  end
end

animals = [Dog.new("Buddy", 3), Cat.new]

animals.each do |animal|
    animal.speak if animal.respond_to?(:speak)
end

# Example of attr_accessor, attr_reader 
# attr_reader: Use when you want to provide read-only access to an instance variable. And Useful when you want to expose the value of an attribute but prevent external modification.

# attr_accessor: Use when you want both read and write access to an instance variable. And Convenient when you want to allow external code to both retrieve and modify the value of an attribute.

Use when you want both read and write access to an instance variable.
Convenient when you want to allow external code to both retrieve and modify the value of an attribute.

class Person
  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Alice", 25)

# Using attr_reader
puts person.name  # Accessing the value

# Using attr_accessor
puts person.age  # Accessing the value
person.age = 26  # Modifying the value
puts person.age  # Accessing the modified value
