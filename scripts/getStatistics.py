#!/usr/bin/env python

import sys

if len(sys.argv)!=3:
	print "Usage"
	print sys.argv[0]+" ScaffoldLengths.txt minimumLength"
	sys.exit()

minimum=int(sys.argv[2])

data=[]

total=0

arguments=sys.argv
file=arguments[1]

for line in open(file):
	tokens=line.split("\t")

	length=int(tokens[1])

	if length>=minimum:
		data.append(length)
		total+=length


data.sort()

count=len(data)

print "Count= "+str(count)

print "Total= "+str(total)

average=total/count

print "Average= "+str(average)

sum=0

n50=0

for item in data:
	if sum >= total/2:
		break
	n50=item
	sum+=item

print "N50= "+str(n50)
