string_to_rev = "Boston College"

def reverse(s):
	rev = ""
	if len(s) == 0:
		return rev
	else:
		rev = s[len(s)-1] + reverse(s[0:-1])
		return rev

revString = reverse(string_to_rev)

print(revString)