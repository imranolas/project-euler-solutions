# Project Euler problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a**2 + b**2 = c**2
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000
# Find the product abc.


def pythagorean_triplet_equal_to(num)
  1.upto(num) do |m|
    (m+1).upto(num) do |n|
      if 2*(n**2) + (2 * n * m) == num 
        a = n**2 - m**2
        b = 2 * n * m
        c = n**2 + m**2
        return [a,b,c]
      end
    end
  end
end

def product_of_pythag_triple(arr)
  arr.inject(1) { |total, i| i * total }
end

puts product_of_pythag_triple(pythagorean_triplet_equal_to(1000))