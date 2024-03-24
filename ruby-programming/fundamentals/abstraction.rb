# Abstraction:
# Abstraction involves simplifying complex systems by modeling classes based on the essential properties and behaviors.

class Car
  def start
    puts "Car started"
  end

  def drive
    puts "Car is moving"
  end

  def stop
    puts "Car stopped"
  end
end

# Creating an instance of the class
my_car = Car.new

# Using abstraction
my_car.start
my_car.drive
my_car.stop
