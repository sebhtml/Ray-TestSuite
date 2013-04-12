
g++ scaffolder_test.cpp \
 ../code/Scaffolder/ScaffoldingVertex.cpp \
 ../code/Scaffolder/ScaffoldingEdge.cpp \
 ../code/Scaffolder/ScaffoldingAlgorithm.cpp \
 -O3 -o scaffolderTest -I ../code -I .. \
-I ../RayPlatform \
-Wall

./scaffolderTest vertices.txt edges.txt
