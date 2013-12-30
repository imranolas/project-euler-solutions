#Project Euler Problem no.3

TARGET = 13195

def largest_prime(num)
	number = num
	factor = 2
	while factor < number - 1
		if number%factor == 0
			number /= factor
			factor = 2
		else
			factor =+ 1	
		end
	end
	puts number
end

largest_prime(TARGET)

