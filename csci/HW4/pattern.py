#this is a pattern matching script

userText = input("What is your text string? \n")
userPat = input("what is your pattern? \n")

def match(textstr,pattern):
	if textstr.lower() == "qqq":
		exit("goodbye")

	for i in range(0,(len(textstr)-len(pattern)+1)):
		print(textstr[i])
		"""
		if pattern == textstr[i:len(pattern)+1]:
			print("It's a match!")
			return True
			break
		else:
			print("nope")
			"""


match(userText,userPat)