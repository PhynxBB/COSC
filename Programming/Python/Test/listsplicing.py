#!usr/bin/python3
string = 'hello'
d = {}
for letter in string:
    if letter not in d:
        d[letter] = 0
    d[letter] += 1
print(d)
