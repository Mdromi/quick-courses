require 'concurrent-ruby'

queue = Concurrent::Array.new

# Producer
producer = Concurrent::Future.execute do
  5.times do |i|
    queue << "Task #{i}"
    sleep 1
  end
end

# Consumer
consumer = Concurrent::Future.execute do
  5.times do
    task = queue.shift
    puts "Processing: #{task}"
  end
end

producer.wait
consumer.wait