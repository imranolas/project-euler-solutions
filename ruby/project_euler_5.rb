# Project Euler problem 5
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder. What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

def smallest_multiple(min, max)
  num = max
  count = max

  while true
    if num%count == 0 && count == min
      return num
    elsif num%count == 0
      count -= 1
    else
      num += max
      count = max
    end
  end

end

puts smallest_multiple(1,20) # 232792560 seriously slow!