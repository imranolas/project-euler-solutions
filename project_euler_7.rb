# Project Euler problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 1000st prime number?

def is_a_prime?(num)
	(2..num-1).detect { |i| num%i == 0 } || !2 ? false : true
end

def nthprime(n)
	arr = []
	num = 2
	while arr[n-1].nil?
		if is_a_prime?(num)
			arr << num
		end
		num += 1
	end
	arr.last
end

puts is_a_prime?(3) # true
puts is_a_prime?(2) # true
puts is_a_prime?(4) # false


puts nthprime(10001) # 104743 slow!