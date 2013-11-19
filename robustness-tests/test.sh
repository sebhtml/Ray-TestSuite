#!/bin/bash


ranks=16

rm -rf popo8
mpiexec -n $ranks ./Ray  -o popo8 \
-test-network-only &> log

if test -f popo8/NetworkTest.txt
then
	echo "PASS"
else
	echo "FAIL"
fi
