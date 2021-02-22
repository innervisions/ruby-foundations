# 02 - Optional Blocks
# def compute
#   block_given? ? yield : 'Does not compute.'
# end

def compute(arg)
  block_given? ? yield(arg) : 'Does not compute.'
end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'
p compute(2) { |arg| arg + 3 } == 5
p compute('ab') { |arg| arg + 'c' } == 'abc'
p compute('ab') == 'Does not compute.'
