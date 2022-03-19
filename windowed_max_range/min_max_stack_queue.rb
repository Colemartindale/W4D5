require_relative 'min_max_stack'
class MinMaxStackQueue

    def initialize
        @stack1 = MinMaxStack.new
        @stack2 = MinMaxStack.new
    end

    def min
        [stack1.min, stack2.min].min
    end

    def max
        [stack1.max, stack2.max].max
    end

    def size
        stack1.size + stack2.size
    end

    def empty?
        stack1.empty? && stack2.empty?
    end

    def enqueue(val)
        stack1.push(val)
    end

    def dequeue
        if stack2.empty?
            until stack1.empty? do
                stack2.push(stack1.pop)
            end
        end
        stack2.pop
    end

    private 
    attr_accessor :stack1, :stack2

end