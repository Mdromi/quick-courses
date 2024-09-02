class Stack
  def initialize 
    @elements = []
  end
  def push(element) 
    @elements.push(element)
  end
  def pop
    @elements.pop
  end
  def peek
    @elements.last
  end
  def empty?
    @elements.empty?
  end
end

# Using the stack
stack = Stack.new
stack.push(1)
stack.push(2)
puts stack.pop    # Output: 2
puts stack.peek   # Output: 1
puts stack.empty? # Output: false