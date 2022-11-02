with open('travel_plans.txt') as fp:
    num = 0
    for line in fp.readlines():
        for i in line:
            num += 1
            
with open('emotion_words.txt') as fp:
    num_words = 0
    for line in fp.readlines():
        num_words += len(line.split()) 

with open('school_prompt.txt') as fp:
    num_lines = 0
    for line in fp.readlines():
        num_lines += 1

with open('school_prompt.txt') as fp:
    counter = 0
    bozo = []
    for line in fp.readlines():
        for char in line:
            if len(bozo) == 30:
                break
            else:
                bozo.append(char)
    beginning_chars = ''.join(bozo)

with open('school_prompt.txt') as fp:
    three = []
    for line in fp.readlines():
        x = line.split()
        three.append(x[2])

with open('emotion_words.txt') as fp:
    emotions = []
    for line in fp.readlines():
        line = line.split()
        emotions.append(line[0])

with open('travel_plans.txt') as fp:
    first_chars = []
    for char in fp.read(33):
        first_chars.append(char)
    first_chars = ''.join(first_chars)

with open('school_prompt.txt') as fp:
    p_words = []
    for line in fp.readlines():
        line = line.split()
        for word in line:
            if ('P' in word) or ('p' in word):
                p_words.append(word)

