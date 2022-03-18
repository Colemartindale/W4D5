
#Phase 1
# def my_min(list)
#     list.each do |n|
#         return n if list.all? do |n2|
#             n <= n2
#         end
#     end
# end 

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



