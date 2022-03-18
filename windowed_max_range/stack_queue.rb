require_relative 'stack'
class StackQueue

    def initialize
        @stack1 = MyStack.new
        @stack2 = MyStack.new
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