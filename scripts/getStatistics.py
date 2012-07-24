#!/usr/bin/env python

import sys

if len(sys.argv)!=3:
	print "Usage"
	print sys.argv[0]+" file.fasta minimumLength"
	sys.exit()

minimum=int(sys.argv[2])

data=[]

total=0

arguments=sys.argv
file=arguments[1]

length=0

for line in open(file):
	
	if line[0]=='>':
		if length>minimum:
			data.append(length)
		length=0
	else:
		length+=len(line.strip())
		
if length>minimum:
	data.append(length)

data.sort()

count=len(data)

print "Count= "+str(count)




sum=0

n50=0

for item in data:
	total+=item

average=total/count

print "Total= "+str(total)
print "Average= "+str(average)

for item in data:
	if sum >= total/2:
		break
	n50=item
	sum+=item

print "N50= "+str(n50)
