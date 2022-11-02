#!/usr/bin/env python3
def invert(l):
    for index,value in enumerate(l):
        l[index] = str(255-int(value))
    return(l)
def inverted(l):
    new_list=[]
    for value in l:
        new_list.append(str((255-(int(value)))))
    return(new_list)
