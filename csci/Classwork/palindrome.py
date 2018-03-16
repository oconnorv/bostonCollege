palindrome = "ABBCCCBBA"

"""
def isPalindrome(s):
	if len(s) <= 1:
		return True
	elif s[0]+s[1:] == s[-1]+isPalindrome(s[-1:])
		return True
	else:
		return False
"""

def reverse(s):
	rev = ""
	if len(s) == 0:
		return rev
	else:
		rev = s[len(s)-1] + reverse(s[0:-1])
		return rev

def rightIsPalindrome(s):
	rev = ""
	if len(s) <= 1:
		return True
	elif reverse(s) == s:
		return True
	else:
		return False

print(rightIsPalindrome(palindrome))