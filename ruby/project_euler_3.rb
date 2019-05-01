# Project Euler Problem no.3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
def sieve(num)
  arr = *(2..num)  
  p = arr.min
  while p
    new_arr = arr.reject { |i| (i % p == 0 ) && (i != p) }
    new_arr.length == arr.length ? break : arr = new_arr
    p = arr[arr.index(p)+1]
  end
  arr
end

TARGET = 600851475143

def largest_prime_factor(num)
	number = (num**0.5).ceil
	factors = sieve(number).reverse
	factors.detect { |i| num % i == 0 }
end


puts largest_prime_factor(TARGET)

