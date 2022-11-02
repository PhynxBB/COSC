#!usr/bin/python3

def Average(list):
    listSize = len(list)
    total = 0
    for i in list:
        total = total + i
    print(total/listSize)

grades = [95, 34, 65, 87, 98]
Average(grades)
