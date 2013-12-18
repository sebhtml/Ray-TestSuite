#!/bin/bash

g++ test_ColorSet.cpp -I . code/Searcher/ColorSet.cpp  code/Searcher/VirtualKmerColor.cpp \
-o test_ColorSet

./test_ColorSet
