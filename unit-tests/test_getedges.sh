
mpicxx -g \
RayPlatform/*/*.cpp \
code/SequencesLoader/ReadHandle.cpp \
code/SeedingData/PathHandle.cpp \
code/SeedingData/GraphPath.cpp \
code/SeedExtender/Direction.cpp code/VerticesExtractor/Vertex.cpp code/SequencesIndexer/ReadAnnotation.cpp \
 test_kmer.cpp code/Mock/common_functions.cpp code/KmerAcademyBuilder/Kmer.cpp \
 -I. -D CONFIG_MAXKMERLENGTH=32 -DCONFIG_ASSERT 

./a.out TGAAATGGAAATGGTCTGGGACG

