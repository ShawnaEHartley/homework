class Stack
    def initialize
        @stack = Stack.new
    end

    def push(ele)
        @stack << ele
    end

    def pop 
        @stack[-1].delete
    end

    def peak
        return @stack[-1]
    end
end

class Queue
    def initialize
        @queue = Queue.new
    end

    def enqueue(ele)
        @queue << ele
    end

    def dequeue
        @queue[0].delete
    end

    def peek
        return @queue[0]
    end
end

class Map 
    def initialize
        @map = Array.new(0) {Array.new(0)}
    end

    def set(key, val)
        if !@map.include?(key)
            @map << [key, value]
        end
    end

    def get(key)
        @map.each do |k, v|
            return v if k == key
        end
    end

    def delete(key)
        @map.delete_if {|k, v| k == key}
    end

    def show
        p @map
    end
end