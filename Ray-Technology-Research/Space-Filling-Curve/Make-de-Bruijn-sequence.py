#!/usr/bin/env python

alphabet=['A','T','C','G']

wordLength=6

# \see http://www.ics.uci.edu/~eppstein/PADS/Lyndon.py
def generateLyndonWords(alphabetSize,maximumLength):
	words = [-1]
	while words:
		words[-1] += 1
		yield words
		m = len(words)
		while len(words) < maximumLength:
			words.append(words[-m])
		while words and words[-1] == alphabetSize - 1:
			words.pop()

def getDeBruijnSequence(alphabetSize,wordLength):
	output=[]
	for word in generateLyndonWords(alphabetSize,wordLength):
		if wordLength % len(word)==0:
			output+=word
	return output

print(getDeBruijnSequence(len(alphabet),wordLength))
