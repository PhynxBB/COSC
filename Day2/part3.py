#!/usr/bin/env python3

def guess_number(n):
    while True:
        userInput = int(input('Please enter your number > \n'))
        if userInput == n:
            print('WIN')
            break
        elif userInput > n:
            print('too high')
        elif userInput < n:
            print('too low')

guess_number(23)
