
g++ scaffolder_test.cpp \
 ../code/plugin_Scaffolder/ScaffoldingVertex.cpp \
 ../code/plugin_Scaffolder/ScaffoldingEdge.cpp \
 ../code/plugin_Scaffolder/ScaffoldingAlgorithm.cpp \
 -O3 -o scaffolderTest -I ../code -I .. \
-I ../RayPlatform \
-Wall

./scaffolderTest vertices.txt edges.txt
