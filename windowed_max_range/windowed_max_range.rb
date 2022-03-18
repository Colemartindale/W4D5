#O(n^2)
def windowed_max_range(arr, size)
    current_max_range = arr[0...size]
    (1..arr.length - size).each do |i|
        sub_range = arr[i...i + size]
        if (sub_range.max - sub_range.min) > (current_max_range.max - current_max_range.min) then
            current_max_range = sub_range
        end
    end
    return current_max_range.max - current_max_range.min
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

