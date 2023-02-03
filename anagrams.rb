def first_anagram?(str1, str2)
    arr = str1.split("").permutation(str1.length).to_a
    arr.include?(str2.split(""))
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    arr = str2.split("")
    str1.split("").each do |x|
        pos = arr.find_index(x)
        if pos != nil
            arr.delete_at(pos)
        end
    end
    arr.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true