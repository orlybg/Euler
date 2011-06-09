# Project Euler problem 5
# http://projecteuler.net/index.php?section=problems&id=5
# Orlando Briceno

ok  = true
idx = 0
while (ok)  do
	idx += 1
	for divisor in 1..20
		if (idx % divisor != 0)
			break
		elsif (divisor == 20)
			ok = false
			@smallestDiv =  idx
		end 
	end
end
puts @smallestDiv
