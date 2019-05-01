# Project Euler problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 =17
# Find the sum of all primes below two million.

class PrimeNum

  def self.prime_below(num)
  arr = *(2..num)  
  p = arr.min
  while p
    new_arr = arr.reject { |i| (i % p == 0 ) && (i != p) }
    new_arr.length == arr.length ? break : arr = new_arr
    p = arr[arr.index(p)+1]
  end
  arr
end

  def self.sum_of_primes_below(num)
    prime_below(num).inject { |sum, i| sum + i }
  end

end

puts PrimeNum.sum_of_primes_below(2_000_000)

