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

# def largest_contiguous_subsum(list)
#     max = list.first
#     list.each_with_index do |n1, i1|
#         max = n1 if n1 > max
#         list.each_with_index do |n2, i2|
#             if i2 > i1
#                 sum = list[i1..i2].sum
#                 max = sum if sum > max
#             end
#         end
#     end
#     max
# end

def largest_contiguous_subsum(list)
    arr = []
    list.each_with_index do |n1, i1|
        arr << [n1]
        list.each_with_index do |n2, i2|
            arr << list[i1..i2] if i2 > i1
        end
    end
    arr = arr.map {|x| x.sum}
    arr.max
end

# list = [5, 3, -7]
# list = [2, 3, -6, 7, -6, 7]
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list)

# def better_lcs(list)
#     largest = list[0]
#     current = 0
#     list.inject do |acc, x|
#         if acc < (acc + x)
#             acc = acc + x
#         else
#             acc 
#         end
#         current += 1
#         if current == list.length - 1

#     end

# end
require 'byebug'
def better_lcs(list)
    i1 = 0
    i2 = 0
    largest = list[0]
    while i1 < list.length
        current_sum = list[i1..i2].sum
        largest = current_sum if current_sum > largest
        i2 += 1
        # debugger
        if (i2 == list.length - 1) && (i1 != list.length - 1)
            i1 += 1
            i2 = i1
            # current_sum = list[i1..i2].sum
            # largest = current_sum if current_sum > largest
        end
        if i2 >= list.length
            break
        end
    end
    return largest
end

# list = [5, 3, -7]
list = [2, 3, -6, 7, -6, 7]

p better_lcs(list)