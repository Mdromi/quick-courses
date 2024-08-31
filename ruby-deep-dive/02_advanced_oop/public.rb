# Methods declared as public are accessible from outside the class. They can be called with an explicit receiver or without a receiver (if called within the same instance). By default, all methods in Ruby are public unless specified otherwise with private or protected. Here's an example:

class MyClass
  def public_method
    puts "This is a public method"
    private_method   # Can be called without an explicit receiver
  end
  def another_public_method
    puts "This is another public method"
  end
  private
  def private_method
    puts "This is a private method"
  end
end
obj = MyClass.new
obj.public_method            # Output: This is a public method
                             #        This is a private method
obj.another_public_method    # Output: This is another public method
obj.private_method           # Error: private method `private_method' called for #<MyClass:0x0000