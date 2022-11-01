#!/usr/bin/env python3

num = int(input('Please enter your number > \n'))
if num%3 == 0 and num%5 == 0:
    print('fizzbuzz')
elif num%3 != 0 and num%5 != 0:
    print(num)
elif num%3 == 0:
    print('fizz')
elif num%5 == 0:
    print('buzz')

