
#Phase 1
#O(n^2)
# def my_min(list)
#     list.each do |n|
#         return n if list.all? do |n2|
#             n <= n2
#         end
#     end
# end 

#Phase
#O(n)
def my_min(list)
    min = list[0]
    list.each do |n|
        if n < min then
            min = n
        end
    end
    return min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# def largest_contiguous_subsum(list)
#     subs = []
#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             subs << list[i..j]
#         end
#     end

#     subs.map! { |sub| sub.sum }
#     return subs.max
# end

def largest_contiguous_subsum(list)
    return nil if list.empty?
    largest_sum = list[0]
    curr_sum = list[0]
    i = 1
    while i < list.length
        curr_sum += list[i]
        if curr_sum < list[i]           
            curr_sum = list[i]
        end
        largest_sum = curr_sum if curr_sum > largest_sum
        i += 1
    end
    largest_sum
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])



