# Singleton methods are methods that are defined on a single instance of a class rather than on all instances.

class Car
  def derive
    "Driving..."
  end
end

my_car = Car.new

def my_car.paint(color)
  @color = color
  "Car painted #{color}"
end

puts my_car.paint("red")  # Output: Car painted red
# Another instance won't have the `paint` method
another_car = Car.new
puts another_car.paint("blue")  # Output: NoMethodError