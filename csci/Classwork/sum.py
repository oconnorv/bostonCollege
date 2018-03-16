L = [4,5,7,1,0,10,8,4]

def totalSum(s):
	if len(s) == 0:
		return 0
	else:
		return s[0] + totalSum(s[1:])

sum = totalSum(L)

print(sum)

def totalSum(s):
	sum = 0
	if len(s) == 0:
		return sum
	else:
		sum += s[0]
		return sum
		s.pop(0)
		print (s)
		totalSum(s)

fullSum = totalSum(L)

print(fullSum)