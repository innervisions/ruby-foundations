# 10 - Count Items
# def count(collection)
#   count = 0
#   collection.each { |el| count += 1 if yield(el) }
#   count
# end

def count(collection)
  collection.select { |el| yield(el) }.size
end

p count([1, 2, 3, 4, 5], &:odd?) == 3
p count([1, 2, 3, 4, 5]) { |value| value % 3 == 1 } == 2
p count([1, 2, 3, 4, 5]) { |_value| true } == 5
p count([1, 2, 3, 4, 5]) { |_value| false } == 0
p count([], &:even?) == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
