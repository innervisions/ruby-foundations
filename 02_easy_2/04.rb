# 04 - Count
def count(*args)
  total = 0
  args.each { |el| total += 1 if yield(el) }
  total
end

p count(1, 3, 6, &:odd?) == 2
p count(1, 3, 6, &:even?) == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |_value| true } == 3
p count() { |_value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
