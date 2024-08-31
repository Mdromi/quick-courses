# Dependency Injection (DI) is a design pattern used in object-oriented programming to achieve inversion of control between objects. In simpler terms, DI is a technique where an object receives (or is "injected" with) its dependencies from an external source rather than creating them itself.

class Engine
  def start
    "Engine started"
  end
end

class ElectricEngine
  def start
    "Electric engine started"
  end
end

class Car
  def initialize(engine)
    @engine = engine  # Dependency is injected from outside
  end

  def start_engine
    @engine.start
  end
end

# Injecting a gas engine dependency
engine = Engine.new
car = Car.new(engine)
puts car.start_engine  # => "Engine started"

# Injecting an electric engine dependency
electric_engine = ElectricEngine.new
car2 = Car.new(electric_engine)
puts car2.start_engine  # => "Electric engine started"
