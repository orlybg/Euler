# Project Euler problem 2
# http://projecteuler.net/index.php?section=problems&id=2
# Orlando Briceno 

@phi = (1 + Math.sqrt(5)) / 2 

# binet formula approach, floor call for rounding fails on huge numbers
# but is a lot faster
def binet(n)
	return ((@phi**n  - (1 - @phi)**n ) /   Math.sqrt(5) ).floor
end

# classic recursive approach
def fib_rec(n)
	n < 2 ? n : fib_rec(n-1) + fib_rec(n-2)
end

# iterative approach, verbose but faster than the recursive one
def fib_iter(n)
	a   = 0
	b   = 1
	aux = 0

	if (n == 0)
        	return n
	end

	(n-1).times do
		aux = b
		b   = a + b
		a   = aux 
	end
	return b
end

n     = 0
@sum  = 0
@fibn = 0
while (@fibn < 4000000)
        n = n + 1
	@fibn = binet(n)
	if (@fibn % 2 == 0) 
		@sum += @fibn
	end
end

puts @sum
