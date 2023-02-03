def my_min(list)
    (0...list.length).each do |i1|
        min = list[i1]
        (0...list.length).each do |i2|
            min = list[i2] if list[i2] < min
        end
        return list[i1] if min == list[i1]
    end
end


# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def my_better_min(list)
    min = list[0]

    list.each {|x| min = x if x < min}
    min
end

# p my_better_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def largest_contiguous_subsum(list)
    max = list.first
    list.each_with_index do |n1, i1|
        max = n1 if n1 > max
        list.each_with_index do |n2, i2|
            if i2 > i1
                sum = list[i1..i2].sum
                max = sum if sum > max
            end
        end
    end
    max
end

# list = [5, 3, -7]
# list = [2, 3, -6, 7, -6, 7]
list = [-5, -1, -3]
p largest_contiguous_subsum(list)