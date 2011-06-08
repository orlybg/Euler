# Project Euler problem 2
# http://projecteuler.net/index.php?section=problems&id=2
# Orlando Briceno 


@phi = (1 + Math.sqrt(5)) / 2 

def fibo(n)
	return ((@phi**n  - (1 - @phi)**n ) /   Math.sqrt(5) ).floor
end


for n in 1..4000000
	sum  = 0
	fibn =  fibo(n)
	if (fibn % 2 == 0) 
		sum += fibn
	end

end

puts sum
