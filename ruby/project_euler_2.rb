#Project Euler Problem no.2

def sum_of_even_fibonnaci_numbers_smaller_than(max_value)
arr = [1,1]
while arr.last < max_value
	(arr << arr.last + arr[arr.length-2])
end
puts arr
arr.select { |i| i.even? && i < max_value }.inject(0) { |sum, i| sum + i }

end

puts sum_of_even_fibonnaci_numbers_smaller_than(4000000)