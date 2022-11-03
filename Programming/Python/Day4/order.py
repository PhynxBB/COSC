#!usr/bin/python3

groceries = {
        "bread": 4,
        "water": 1,
        "fish": 5
        }

orders = [("bread", 5), ("water", 3), ("fish", 2)]


print(orders)
print(groceries)
totalValue = 0

for i in groceries:
    for x in orders:
        if i == x[0]:
            totalValue = totalValue + x[1] * groceries[i]
print(totalValue)
