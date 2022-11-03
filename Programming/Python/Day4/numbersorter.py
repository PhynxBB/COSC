def descending_order(num):
    temp = []
    list = str(num)
    for i in list:
        temp.append(i)
    return int(''.join(sorted(temp, reverse=True)))
