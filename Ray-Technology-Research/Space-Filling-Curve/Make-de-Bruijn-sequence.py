#!/usr/bin/env python

alphabet=['A','T','C','G']

wordLength=6

# \see http://www.ics.uci.edu/~eppstein/PADS/Lyndon.py
def generateLyndonWords(alphabetSize,maximumLength):
	word = [-1]
	while word:
		word[-1] += 1
		yield word
		m = len(word)
		while len(word) < maximumLength:
			word.append(word[-m])
		while word and word[-1] == alphabetSize - 1:
			word.pop()

def getDeBruijnSequence(alphabetSize,wordLength):
	output=[]
	for word in generateLyndonWords(alphabetSize,wordLength):
		if wordLength % len(word)==0:
			output+=word
	return output

print(getDeBruijnSequence(len(alphabet),wordLength))
