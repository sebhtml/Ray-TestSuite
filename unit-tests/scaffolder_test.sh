
g++ scaffolder_test.cpp \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
code/Scaffolder/ScaffoldingVertex.cpp \
code/Scaffolder/ScaffoldingEdge.cpp \
code/Scaffolder/ScaffoldingAlgorithm.cpp \
 -O3 -o scaffolderTest  \
-I . \
-Wall

./scaffolderTest vertices.txt edges.txt
