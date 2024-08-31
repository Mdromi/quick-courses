# Methods declared as protected can be called within the same instance of the class or its subclasses, similar to private methods. However, they can also be called with an explicit receiver as long as the receiver is of the same class or a subclass. protected methods are often used to define shared behaviors among instances of the same class. Here's an example:

class MyClass
  def public_method
    puts "This is a public method"
    protected_method  # Can be called with an explicit receiver
  end
  protected
  def protected_method
    puts "This is a protected method"
  end
end
obj1 = MyClass.new
obj2 = MyClass.new
obj1.public_method   # Output: This is a public method
                      #        This is a protected method
obj2.protected_method # Error: protected method `protected_method' called for #<MyClass:0x00007fd08f844708> (NoMethodError)