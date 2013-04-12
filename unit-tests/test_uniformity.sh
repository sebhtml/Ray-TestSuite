mpicxx \
 test_uniform.cpp \
../code/SeedExtender/Direction.cpp  ../code/SequencesIndexer/ReadAnnotation.cpp \
../code/VerticesExtractor/Vertex.cpp  \
../code/SeedingData/GraphPath.cpp \
../code/Mock/common_functions.cpp ../code/KmerAcademyBuilder/Kmer.cpp  -I.  -D CONFIG_MAXKMERLENGTH=64 -DASSERT -I.. -O3 \
-I ../code -I ../RayPlatform ../RayPlatform/*/*.cpp

./a.out 
