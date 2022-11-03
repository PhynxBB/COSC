#!usr/bin/python3
passwords = []
x = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'x', 'y', 'z', 1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
for a in x:
    for b in x:
        for c in x:
            for d in x:
                passwords.append('{}{}{}{}'.format(a, b, c, d))

passwords = str(passwords)

with open('passwords.txt', 'x') as fp:
    fp.write(passwords)
    fp.close()
            
