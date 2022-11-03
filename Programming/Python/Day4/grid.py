#!usr/bin/python3
grid = []
x = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k']
y = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

for i in x:
    for z in y:
        grid.append('{}{}'.format(i, z))
print(grid)
