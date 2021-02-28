# 01 - From-To-Step Sequence Generator
def step(starting, ending, step)
  value = starting
  until value > ending
    yield(value)
    value += step
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }

# A return value of nil makes sense for lack of anything else.
# If this was a class method, I would return the calling object.
