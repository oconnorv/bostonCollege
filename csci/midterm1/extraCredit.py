vowels = ["a","e","i","o","u"]

def vowelSearch(userString):
    lowString = userString.lower()
    vowelString = ""

    for v in vowels:
        if lowString.find(v):
            vowelString += v

    return "My string " + userString + " has " + vowelString + " as vowels"

print (vowelSearch("Hi there friends!"))

