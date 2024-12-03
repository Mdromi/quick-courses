class Node
    attr_accessor :value, :next_node
    def initialize (value)
        @value = value
        @next_node = nil
    end
end

class LinkedList
    def initialize
        @head = nil
    end
    def append(value)
        if @head.nil?
            @head = Node.new(value)
        else 
            current = @head
            current = current.next_node until current.next_node.nil?
            current.next_node = Node.new(value)
        end
    end

    def delete(value)
        return if @head.nil?
        if @head.value = value
            @head = @head.next_node
            return
        end
        current = @head
        while current.next_node && current.next_node.value != value
            current = current.next_node
        end

        current.next_node = current.next_node.next_node if current.next_node
    end

    def display
        current = @head
        while current
            print "#{current.value} -> "
            current = current.next_node
        end
        puts "nil"
    end
end

# Using the linked list
list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.display       # Output: 1 -> 2 -> 3 -> nil
list.delete(2)
list.display       # Output: 1 -> 3 -> nil
