require "set"

#O(n^2)
def bad_two_sum?(arr, target_sum)
    (0...arr.length).each do |i|
        (i + 1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    false
end

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort
    first = 0
    last = arr.length - 1
    until first == last
        sum = arr[first] + arr[last]
        return true if sum == target_sum
        if sum < target_sum
            first += 1
        else
            last -= 1
        end
    end
    false
end

#O(n)
def two_sum?(arr, target_sum)
    set = Set.new()
    arr.each do |num|
        return true if set.include?(target_sum - num)
        set.add(num)
    end
    false
end

arr = [0, 1, 5, 7]

p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false