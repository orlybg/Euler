# Project Euler problem 2
# http://projecteuler.net/index.php?section=problems&id=2
# Orlando Briceno 

@phi = (1 + Math.sqrt(5)) / 2 

def binet(n)
	return ((@phi**n  - (1 - @phi)**n ) /   Math.sqrt(5) ).floor
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
