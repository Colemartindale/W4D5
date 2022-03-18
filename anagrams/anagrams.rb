

def permutator(answer, add_to)
    return [answer] if add_to.length == 0
    arr = []
    add_to.each_char.with_index do |char, ind|
        arr += permutator(answer + char, add_to[0...ind] + add_to[ind + 1..-1])
    end 
    arr
end
#this is O(n!)
def first_anagram?(str1, str2)
    permutations = permutator("", str1)
    permutations.include?(str2)
end

# p first_anagram?("cats!", "stac!")
# p first_anagram?("iaijdaiwodjiwojdajoidwiwwajidiwodaji", "asd")

#O(n^2)
def second_anagram?(str1, str2)
    return false if str1.length != str2.length
    until str2.empty?
        str1.each_char do |char|
            index = str2.index(char)
            return false unless index
            str2[index] = ""
        end
    end
    return true
end
# p second_anagram?("cats!", "stac!")
# p second_anagram?("cats!", "sta!")
# p second_anagram?("cats!", "sta!w")

#O(n log n)
def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

# p third_anagram?("cats!", "stac!")
# p third_anagram?("cats!", "sta!")
# p third_anagram?("cats!", "sta!w")

#O(n)
def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    str1.each_char { |char| hash[char] += 1 }
    str2.each_char { |char| hash[char] -= 1 }
    hash.values.all? { |val| val == 0 }
end

p fourth_anagram?("cats!", "stac!")
p fourth_anagram?("cats!", "sta!")
p fourth_anagram?("cats!", "sta!w")