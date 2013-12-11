#!/bin/bash

rm -rf popo8

#-verify-message-integrity \
#-show-communication-events \
ranks=1
miniRanks=3

mpiexec -n $ranks ./Ray -mini-ranks-per-rank $miniRanks -o popo8 \
-test-network-only  &> log

if test -f popo8/NetworkTest.txt
then
	echo "PASS"
else
	echo "FAIL"
fi
