class LinkedList
    attr_accessor :name
    attr_reader :head, :tail
    
    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
            @tail = new_node
        else
            @tail.next = new_node
            @tail = new_node
        end
    end

    def prepend(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
            @tail = new_node
        else
            new_node.next = @head
            @head = new_node
        end
    end
    
    def size
        return total = 0 if @head == nil
        total = 1
        current = @head
        until current == @tail
            total += 1
            current = current.next
        end
        return total
    end

    def at(index)
        i = 0
        current = @head
        until i == index
            i += 1
            current = current.next
        end
        return current
    end

    def pop
        length = self.size
        new_last = self.at(length-2)
        previous = self.at(length-3)
        previous.next = new_last
        @tail = new_last
    end

    def contains?(value)
        current = @head
        until current.nil?
            if current.data == value
                return true
            end
            current = current.next
        end
        return false
    end

    def find(value)
        i = 0
        current = @head
        until current.nil?
            if current.data == value
                return i
            end
            i += 1
            current = current.next
        end
        return nil
    end

    def to_s
        current = @head
        string = ""
        until current.nil?
            string = string + "( #{current.data} ) -> "
            current = current.next
        end
        string + "nil"
    end

end

class Node
    attr_accessor :data, :next

    def initialize(data)
        @next = nil
        @data = data
    end
end