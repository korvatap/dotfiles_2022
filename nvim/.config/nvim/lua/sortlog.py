from re import split
def split_string(string, delimiters):
    pattern = r'|'.join(delimiters)
    return split(pattern, string)

logFile = open('time.log', 'r')
lines = logFile.readlines()
elapsedList = []

for line in lines:
    splitted = split_string(line, ['  ', ': '])
    if 1 < len(splitted):
        elapsed = splitted[1]
        elapsedList.append((elapsed, line))

elapsedList.sort(key=lambda tup: tup[0], reverse=True)

with open('sortedTime.log', 'w') as f:
    for line in elapsedList:
        f.write(line[1])

        
