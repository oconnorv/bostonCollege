#makes a rock paper scissors game
import random

print("Welcome to Rock, Paper Scissors.")

userThrow = input("What is your throw? Type Rock, Paper, Scissors, or \"quit\" to quit: ").lower()

compThrow = random.randint(1,3)

if compThrow == 1:
	compThrow = "rock"
elif compThrow == 2:
	compThrow = "paper"
else:
	compThrow = "scissors"

print("The computer chooses "+compThrow+".")

if userThrow == "quit": #user just wants to leave
	exit("goodbye")
elif userThrow == "rock":
	if compThrow == "paper":
		print("You Lose!")
	elif compThrow == "scissors":
		print("You Win!")
	else:
		print("It's a tie!")
elif userThrow == "paper":
	if compThrow == "rock":
		print("You WIN!")
	elif compThrow == "scissors":
		print("You Lose!")
	else:
		print("It's a tie")
else:
	if compThrow == "rock":
		print("You lose!")
	elif compThrow == "paper":
		print("You win!")
	else:
		print("It's a tie")

