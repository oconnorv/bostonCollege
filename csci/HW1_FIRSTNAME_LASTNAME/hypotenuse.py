#description: This is my second program
#author: O'Connor, John
#Date: Aug. 29, 2017

import math

def hypotenuse(base,height):
    hypo = math.sqrt(((base**2)+(height**2)))
    return hypo

base = float(input("Base: "))
height = float(input("Height: "))

print(hypotenuse(base,height))
