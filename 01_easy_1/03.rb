# 03 - Find Missing Numbers
# def missing(numbers)
#   missing_numbers = []
#   current_number = numbers.first
#   while current_number < numbers.last
#     missing_numbers << current_number unless numbers.include?(current_number)
#     current_number += 1
#   end
#   missing_numbers
# end

def missing(numbers)
  (numbers.min..numbers.max).to_a - numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
