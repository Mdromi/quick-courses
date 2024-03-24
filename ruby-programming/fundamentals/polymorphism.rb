# Polymorphism:
# Polymorphism allows objects of different classes to be treated as objects of a common base class.

class Bird
    def make_sound
        puts "Chirp, chirp!"
    end
end

class Duck < Bird
  def make_sound
    puts "Quack, quack!"
  end
end

class Crow < Bird
  # Inherits make_sound from Bird
end

# Using polymorphism
birds = [Bird.new, Duck.new, Crow.new]
puts birds

birds.each do |bird|
  bird.make_sound
end