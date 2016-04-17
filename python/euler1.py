#!/usr/bin/python
# Euler1 in Python

def euler1(x):
	return sum(i for i in range(x) if i%3==0 or i%5==0)

print euler1(1000)

data = '''
oer is secret
click secret link
secret sport link
play sport today
went play sport
secret sport event
sport is today
sport costs money
'''
data = data.split('\n')[1:-1]
dict = {}
for line in data:
	words = line.split(' ')
	for word in words:
		if dict.has_key(word):
			dict[word] += 1
		else:
			dict[word] = 1

for k in dict.keys():
	print k, dict[k]
