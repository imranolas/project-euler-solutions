#Project Euler Problem 4 A palindromic number reads the same both ways. The largest palindrome made
#from the product of two 2-digit numbers is 9009 = 91 x 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(first,last)
	arr = []
	(first..last).each do |i| 
		(i..last).each do |j|
			result = i*j
			if result.to_s.reverse == result.to_s
				arr << result
			end
		end
	end
puts arr.max

end

palindrome(100,999)