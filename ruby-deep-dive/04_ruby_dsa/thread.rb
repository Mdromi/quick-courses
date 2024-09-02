require 'thread'

queue = Queue.new

# Producer Thread
producer = Thread.new do
  5.times do |i|
    queue << "Item #{i}"
    sleep 1
  end
end

# Consumer Thread
consumer = Thread.new do
  5.times do
    item = queue.pop
    puts "Consumed: #{item}"
  end
end

producer.join
consumer.join