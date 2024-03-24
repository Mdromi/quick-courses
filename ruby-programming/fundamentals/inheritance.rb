# Inheritance:
# Inheritance allows a class (subclass) to inherit attributes and behaviors from another class (superclass).

class Shape
    attr_accessor :color

    def initialize(color)
        @color = color
    end

    def area 
        puts "Calculating area of the shape"
    end
end

class Circle < Shape
    attr_accessor :radius

    def initialize(color, radius)
        super(color)
        @radius = radius
    end

    def area
        Math::PI * radius**2
    end
end

# Creating instances of classes
circle = Circle.new("Red", 5)

# Accessing attributes
puts circle.color  # Output: Red

# Calling methods
puts circle.area  # Output: 78.53
