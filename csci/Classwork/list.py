oldList = ["a", "b", "tiger"]
newList = []

def capitalizeAll(t):
	for i in t:
		i = i.upper()
		newList.append(i)

	return newList

print(capitalizeAll(oldList))