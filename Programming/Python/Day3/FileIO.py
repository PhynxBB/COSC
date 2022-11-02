#!usr/bin/python3

with open('test.txt', 'w') as fp:
    fp.write('First Line \n')
    lines = ['Second Line\n', 'Third Line\n', 'Fourth line\n']
    fp.writelines(lines)

