#!usr/bin/python3

lst0 = [3, 4, 9]
lst1 = [8, 1, 5]

for i in lst0:
    lst1.append(i)
print(sorted(lst1, reverse=True))
