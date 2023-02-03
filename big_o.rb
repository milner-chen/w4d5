def my_min(list)
    (0...list.length).each do |i1|
        min = list[i1]
        (0...list.length).each do |i2|
            min = list[i2] if list[i2] < min
        end
        return list[i1] if min == list[i1]
    end
end


p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def my_better_min(list)
    min = list[0]

    list.each {|x| min = x if x < min}
    min
end

p my_better_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])

