# Methods declared as private can only be called within the same instance of the class or its subclasses. They cannot be called with an explicit receiver (an object). Typically, private methods are internal implementation details and not meant to be called directly from outside the class. Here's an example:

class MyClass
  def public_method
    puts "This is a public method"
    private_method   # Can be called without an explicit receiver
  end
  private
  def private_method
    puts "This is a private method"
  end
end
obj = MyClass.new
obj.public_method   # Output: This is a public method
                    #        This is a private method
obj.private_method  # Error: private method `private_method' called for #<MyClass:0x00007fd08f844708> (NoMethodError)