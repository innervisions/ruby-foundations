# 05 - drop_while
# def drop_while(arr)
#   drop_idx = nil
#   arr.each_with_index do |el, idx|
#     unless yield(el)
#       drop_idx = idx
#       break
#     end
#   end
#   drop_idx ? arr[drop_idx..-1] : []
# end

def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end
  array[index..-1]
end

p drop_while([1, 3, 5, 6], &:odd?) == [6]
p drop_while([1, 3, 5, 6], &:even?) == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |_value| true } == []
p drop_while([1, 3, 5, 6]) { |_value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |_value| true } == []
