# 04 - Divisors
# def divisors(number)
#   1.upto(number / 2).select { |denom| number % denom == 0 } + [number]
# end

def divisors(number)
  divisors = []
  1.upto(Math.sqrt(number)) do |divisor|
    if number % divisor == 0
      divisors << divisor
      divisors << number / divisor
    end
  end
  divisors.uniq.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
