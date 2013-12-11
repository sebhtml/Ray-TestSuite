#!/bin/bash

rm -rf popo8

#-verify-message-integrity \
ranks=2
miniRanks=3

mpiexec -n $ranks ./Ray \
-show-communication-events \
-o popo8  &> log

if test -f popo8/NetworkTest.txt
then
	echo "PASS"
else
	echo "FAIL"
fi
