# Project Euler problem 1
# http://projecteuler.net/index.php?section=problems&id=1
# Orlando Briceno 

sum = 0
for x in 1..999
	if (x % 3 == 0) or (x % 5 == 0)
		sum += x;
	end
end
printf("%d \n\n", sum)
