# Project Euler problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a**2 + b**2 = c**2
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000
# Find the product abc.

def squares_smaller_than(num)
  arr = []
  (1..num).each do |x|
    arr << x * x if x < num
  end
  arr
end

def pythagorean_triplet_equal_to(num)
  arr = squares_smaller_than(num).combination(3).to_a.map { |a| a.sort! }
  arr = arr.select do |a| 
    a.sort.first + a.sort[1] == a.sort.last
  end
end

puts pythagorean_triplet_equal_to(1000)