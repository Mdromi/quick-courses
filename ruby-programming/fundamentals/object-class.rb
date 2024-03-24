# Classes and Objects:
class Animal 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def make_sound
        puts "Generic animal sound"
    end
end

class Dog < Animal
    def make_sound
        puts "Woof, woof!"
    end
end

class Cat < Animal
    def make_sound
        puts "Meow!"
    end
end

class Tiger < Animal
end

# Creating instances of classes
dog = Dog.new("Buddy")
cat = Cat.new("Whiskers")
tiger = Tiger.new("Royal Bangole")

# Accessing attributes
puts dog.name  # Output: Buddy
puts cat.name  # Output: Whiskers
puts tiger.name  # Output: Royal Bangole

# Calling methods
dog.make_sound  # Output: Woof, woof!
cat.make_sound  # Output: Meow!
tiger.make_sound # Output: Generic animal sound

