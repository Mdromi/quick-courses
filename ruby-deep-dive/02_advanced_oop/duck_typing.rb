# Duck typing in Ruby refers to the idea that an object’s suitability is determined by the presence of certain methods and properties, rather than the object’s actual type. The name comes from the saying, “If it looks like a duck and quacks like a duck, it’s probably a duck.”

class Dog
  def speak
    "Woof!"
  end
end
class Cat
  def speak
    "Meow!"
  end
end
class Duck
  def speak
    "Quack!"
  end
end
def make_it_speak(animal)
  puts animal.speak
end
dog = Dog.new
cat = Cat.new
duck = Duck.new
make_it_speak(dog)  # Output: Woof!
make_it_speak(cat)  # Output: Meow!
make_it_speak(duck)  # Output: Quack!
