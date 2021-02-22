# 09 - Iterators: True for one?
def one?(collection)
  true_for_one = false
  collection.each do |el|
    next unless yield(el)
    return false if true_for_one
    true_for_one = true
  end
  true_for_one
end

p one?([1, 3, 5, 6], &:even?)    # -> true
p one?([1, 3, 5, 7], &:odd?)     # -> false
p one?([2, 4, 6, 8], &:even?)    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |_value| true }           # -> false
p one?([1, 3, 5, 7]) { |_value| false }          # -> false
p one?([]) { |_value| true }                     # -> false
