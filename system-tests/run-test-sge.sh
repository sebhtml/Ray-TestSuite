#!/bin/bash

TEST_NAME=$1
testName=$TEST_NAME

if [ -z $RAY_TEST_SUITE ]
then
	source Variables.sh
fi

if [ -z $RAY_PATH ]
then
	export RAY_PATH=$RAY_TEST_SUITE/system-tests/builds/build-vanilla
fi

if [ -z $NSLOTS ]
then
	export NSLOTS=32
fi

qsubFile=template.sh-qsub-$testName
cp template.sh $qsubFile
expression="s/__TEST_NAME__/$testName/g"
sed -i $expression $qsubFile

expression3="s/__NSLOTS__/$NSLOTS/g"
sed -i $expression3 $qsubFile

# @ is the delimiter here.
expression2="s@__RAY_PATH__@$RAY_PATH@g"
sed -i $expression2 $qsubFile

expression2="s@__RAY_TEST_SUITE__@$RAY_TEST_SUITE@g"
sed -i $expression2 $qsubFile

qsubOut=qsub-out-$testName
qsub $qsubFile 
