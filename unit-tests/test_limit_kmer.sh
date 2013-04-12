mpicxx  ../code/SeedExtender/Direction.cpp  \
../code/SequencesIndexer/ReadAnnotation.cpp \
../code/SeedingData/GraphPath.cpp \
../code/VerticesExtractor/Vertex.cpp test_kmer.cpp ../code/Mock/common_functions.cpp \
../code/KmerAcademyBuilder/Kmer.cpp   -I.  -D MAXKMERLENGTH=50 -DASSERT -I.. -I ../code -I ../RayPlatform \
../RayPlatform/*/*.cpp 

./a.out \
TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
