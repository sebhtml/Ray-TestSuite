#!/bin/bash

echo "" > Files

for i in $(ls code|grep plugin)
do
	plugin=$(echo $i|sed 's/plugin_//g')

	echo code/plugin_$plugin/$plugin.h >> Files
	echo code/plugin_$plugin/$plugin.cpp >> Files


	echo "plugin $plugin"
	echo ""

	# remove it from the Makefile
	grep -v _adapters.o code/plugin_$plugin/Makefile > 1
	mv 1 code/plugin_$plugin/Makefile

	# remove it from the .h
	grep -v _adapters.h code/plugin_$plugin/$plugin.h > 1
	mv 1 code/plugin_$plugin/$plugin.h


	# append new code too

	rm top_h top_cpp middle_h middle_cpp bottom_h bottom_cpp -f

	grep -n "ComputeCore.h" code/plugin_$plugin/$plugin.h|sed 's/:/ /g'|awk '{print $1}' > 1
	grep -n "using namespace" code/plugin_$plugin/$plugin.h|sed 's/:/ /g'|awk '{print $1}' >> 1

	separator_h=$(cat 1 |sort -r -n|head -n1)
	head -n $separator_h code/plugin_$plugin/$plugin.h > top_h
	linesInFile=$(cat code/plugin_$plugin/$plugin.h|wc -l)
	remainingLines_h=$(($linesInFile-$separator_h))
	tail -n $remainingLines_h code/plugin_$plugin/$plugin.h > bottom_h

	separator_cpp=$(grep -n "#include" code/plugin_$plugin/$plugin.cpp|sed 's/:/ /g'|awk '{print $1}'|sort -r -n|head -n1)
	head -n $separator_cpp code/plugin_$plugin/$plugin.cpp > top_cpp
	linesInFile=$(cat code/plugin_$plugin/$plugin.cpp|wc -l)
	remainingLines_cpp=$(($linesInFile-$separator_cpp))
	tail -n $remainingLines_cpp code/plugin_$plugin/$plugin.cpp > bottom_cpp

	echo "" >> middle_h
	echo " /* generated_automatically */" >> middle_h
	echo "class $plugin; /* generated_automatically */" >> middle_h
	echo " /* generated_automatically */" >> middle_h


	echo "" >> middle_cpp
	echo " /* generated_automatically */" >> middle_cpp

	for handle in $(grep call_ code/plugin_$plugin/$plugin.h |grep MASTER_MODE|sed 's/void call_//g'|sed 's/();//g'|sed 's/bool call_//g')
	do

		echo "____CreateMasterModeAdapterDeclaration($plugin,$handle); /* generated_automatically */" >> middle_h
		echo "____CreateMasterModeAdapterImplementation($plugin,$handle); /* generated_automatically */" >> middle_cpp
	done

	echo " /* generated_automatically */" >> middle_h
	echo " /* generated_automatically */" >> middle_cpp

	for handle in $(grep call_ code/plugin_$plugin/$plugin.h |grep SLAVE_MODE|sed 's/void call_//g'|sed 's/();//g'|sed 's/bool call_//g')
	do

		echo "____CreateSlaveModeAdapterDeclaration($plugin,$handle); /* generated_automatically */" >> middle_h
		echo "____CreateSlaveModeAdapterImplementation($plugin,$handle); /* generated_automatically */" >> middle_cpp
	done

	echo " /* generated_automatically */" >> middle_h
	echo " /* generated_automatically */" >> middle_cpp

	for handle in $(grep call_ code/plugin_$plugin/$plugin.h |grep MPI_TAG|sed 's/void call_//g'|sed "s/(Message\*message);//g"|sed "s/(Message\*m);//g"|sed 's/bool call_//g')
	do

		echo "____CreateMessageTagAdapterDeclaration($plugin,$handle); /* generated_automatically */" >> middle_h
		echo "____CreateMessageTagAdapterImplementation($plugin,$handle); /* generated_automatically */" >> middle_cpp
	done

	echo " /* generated_automatically */" >> middle_h
	echo "" >> middle_h
	echo " /* generated_automatically */" >> middle_cpp
	echo "" >> middle_cpp

	cat top_h middle_h bottom_h > code/plugin_$plugin/$plugin.h 
	cat top_cpp middle_cpp bottom_cpp > code/plugin_$plugin/$plugin.cpp

done


echo "Modified files in <Files>"
