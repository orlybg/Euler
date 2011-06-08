# Project Euler problem 3
# http://projecteuler.net/index.php?section=problems&id=6
# Orlando Briceno 

def gauss_sum(n)
	return (n*(n+1)) / 2
end

def sum_squares(n)
	sum = 0
	i   = 1
	while (i <= n ) do
		sum += (i ** 2)
		i += 1
	end
	return sum
end

SquareOfSums = gauss_sum(100) ** 2
SumOfSquares = sum_squares(100) 
puts SquareOfSums.to_s() + ' - '  + SumOfSquares.to_s() + ' = '  + (SquareOfSums - SumOfSquares).to_s



