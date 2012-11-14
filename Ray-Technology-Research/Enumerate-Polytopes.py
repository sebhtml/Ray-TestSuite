#!/usr/bin/env python
# encoding: UTF-8
# find polytopes
# Sébastien Boisvert

diameter=1
coresPerNode=24
maximumDiameter=4
maximumMachines=350

while diameter<=maximumDiameter:
	base=1
	while base<=100:
		vertices=base**diameter
		if vertices%coresPerNode==0:
			machines=vertices/coresPerNode
			if machines<=maximumMachines:
				print str(base)+"^"+str(diameter)+" is "+str(vertices)+" processes, "+str(machines)+" machines with "+str(coresPerNode)+" cores each. polytope has "+str(vertices)+" vertices and a degree of "+str(diameter*(base-1))
	
		base+=1

	diameter+=1
