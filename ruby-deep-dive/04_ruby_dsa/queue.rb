class Queue
  def initialize
    @elements = []
  end
  def enqueue(element)
    @elements.push(element)
  end
  def dequeue
    @elements.shift
  end
  def peek
    @elements.first
  end
  def empty?
    @elements.empty?
  end
end

# Using the queue
queue = Queue.new
queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue  # Output: 1
puts queue.peek     # Output: 2
puts queue.empty?   # Output: false