mpicxx \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
 test_uniform.cpp \
code/SeedExtender/Direction.cpp  code/SequencesIndexer/ReadAnnotation.cpp \
code/VerticesExtractor/Vertex.cpp  \
code/SeedingData/GraphPath.cpp \
code/Mock/common_functions.cpp code/KmerAcademyBuilder/Kmer.cpp  -I.  -D CONFIG_MAXKMERLENGTH=64 -DCONFIG_ASSERT  -O3 \
RayPlatform/*/*.cpp

./a.out 
