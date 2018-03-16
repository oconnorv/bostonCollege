# this is a game that loops and has people guess a number

import random
import sys

compNum = random.randint(1,100)
userNum = input("Guess what number I am thinking of - between 1 and 100: ")

print("compNum: " + str(compNum))

def checkNum(userNum):
	if userNum.isdigit():
		if not float(userNum).is_integer():
			userNum = input("Please input an integer digit: ")
			checkNum(userNum)
		else:
			userNum = int(userNum)
	else:
		userNum = ("Please input an integer digit: ")
		checkNum(userNum)
	return userNum

def guessNum(compNum, userNum):
	if userNum == compNum:
		sys.exit("You have guessed it! Super job!!!!!! Have a great day!")
	
	while userNum != compNum:
		if userNum > compNum:
			print ("Your number is too high")
			guessNum(compNum, checkNum(userNum))
		else:
			print ("Your number is too low")
			guessNum(compNum, checkNum(userNum))

guessNum(compNum,checkNum(userNum))