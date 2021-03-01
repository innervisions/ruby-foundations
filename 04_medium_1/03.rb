# 03 - Passing Parameters Part 1
items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) { |arr| puts arr.join(', ') }
gather(items) { |arr| puts arr.map(&:upcase).join(', ') }
