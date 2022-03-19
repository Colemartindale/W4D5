
class MinMaxStack

    def initialize
        @store = []
        @max_store = []
        @min_store = []
    end

    def max
        max_store.last
    end

    def min
        min_store.last
    end

    def peek
        store.last
    end

    def size
        store.size
    end

    def empty?
        store.empty?
    end

    def pop
        min_store.pop
        max_store.pop
        store.pop
    end

    def push(val)
        store.push(val)
        if max_store.empty?
            max_store.push(val)
            min_store.push(val)
        else
            if val > max
                max_store.push(val)
            else
                max_store.push(max)
            end

            if val < min
                min_store.push(val)
            else
                min_store.push(min)
            end
        end
    end

    private
    attr_accessor :store, :max_store, :min_store
    
end