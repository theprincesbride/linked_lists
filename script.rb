class LinkedList
    attr_accessor :head
    def initialize
        @head = nil
    end

    def append(value)
        node = Node.new(value)
        if @head == nil
            @head = node
        else
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
            end
            current_node.next = node
        end
    end

    def prepend(value)
        node = Node.new(value)
        if @head == nil
            @head = node
        else
           current_node = node
           current_node.next = @head
           @head = current_node
        end
    end

    def size
        if @head == nil
            count = 0
        else
            count = 1
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
                count += 1
            end
        end
        count
    end

    def head
        if @head == nil
            puts "This list is currently empty"
        else
        puts "The head node is #{@head} and the value is #{@head.value}"
        end
    end

    def tail
        if @head == nil
            puts "This list is currently empty"
        else
        current_node = @head
        while current_node.next != nil
            current_node = current_node.next
        end
        puts "The tail node is #{current_node} and the value is #{current_node.value}"
    end
    end

    def at(index)
        if @head == nil
            puts "This list is currently empty"
        else
            count = 1
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
                count += 1
                if count == index
                    puts "The node at position #{index} is #{current_node} and the value is #{current_node.value}"
                end
            end
        end
    end

    def pop
        if @head == nil
            puts "This list is currently empty"
        else
            current_node = @head
            while current_node.next.next != nil
                current_node = current_node.next
            end
            last_node = current_node.next
            current_node.next = nil
        end
        puts "The removed node is #{last_node} and the value is #{last_node.value}"
    end

    def contains?(value)
        if @head == nil
            puts "This list is currently empty"
        else
            current_node = @head
            while current_node.next != nil
                if current_node.value == value
                    puts true
                    return true
                else
                current_node = current_node.next
                end
            end
            puts false
            return false
        end
    end

    def find(value)
        if @head == nil
            puts "This list is currently empty"
        else
            current_node = @head
            count = 1
            while current_node.next != nil
                if current_node.value == value
                    puts "The node position of the node containing value #{value} is #{count}"
                    return count
                else
                    current_node = current_node.next
                    count += 1
                end
            end
            puts nil
            return nil
        end
        end

        def to_s
            if @head == nil
                puts "This list is currently empty"
            else
                string = ""
                current_node = @head
                while current_node.next != nil
                    string += "( #{current_node.value} ) -> "
                    current_node = current_node.next
                end
                string += "( #{current_node.value} ) -> nil"
                puts string
            end
        end


end

class Node
    attr_accessor :value, :next
    def initialize(value, next_node = nil)
        @value = value
        @next = next_node
    end


end

list = LinkedList.new
list.append(2)
list.append(3)
list.prepend(1)
list.append(4)
list.append(5)
list.append(6)
list.append(7)
list.append(8)
list.append(9)
list.append(10)
puts list.size
list.head
list.tail
list.at(5)
p list
list.pop
list.tail
list.contains?(1)
list.contains?(5)
list.contains?('hello')
list.find(1)
list.find(5)
list.find('hello')
list.to_s
