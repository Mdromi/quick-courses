class PriorityQueue
  def initialize
    @queue = []
  end

  def push(item, priority)
    @queue.push([item, priority])
    @queue.sort_by! { |_, p| -p }  # Sort by priority (higher first)
  end

  def pop
    @queue.shift.first
  end

  def empty?
    @queue.empty?
  end
end

pq = PriorityQueue.new
pq.push("low_priority", 1)
pq.push("high_priority", 10)
puts pq.pop  # => "high_priority"