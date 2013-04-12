
mpicxx -g \
 ../RayPlatform/*/*.cpp \
../code/SeedingData/GraphPath.cpp \
../code/SeedExtender/Direction.cpp ../code/VerticesExtractor/Vertex.cpp ../code/SequencesIndexer/ReadAnnotation.cpp \
 test_kmer.cpp ../code/Mock/common_functions.cpp ../code/KmerAcademyBuilder/Kmer.cpp \
 -I. -D MAXKMERLENGTH=32 -DASSERT -I../code -I ../RayPlatform -I ..
./a.out TGAAATGGAAATGGTCTGGGACG

