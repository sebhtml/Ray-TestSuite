mpicxx \
 test_uniform.cpp \
../code/plugin_SeedExtender/Direction.cpp  ../code/plugin_SequencesIndexer/ReadAnnotation.cpp \
../code/plugin_VerticesExtractor/Vertex.cpp  \
../code/plugin_SeedingData/GraphPath.cpp \
../code/plugin_Mock/common_functions.cpp ../code/plugin_KmerAcademyBuilder/Kmer.cpp  -I.  -D CONFIG_MAXKMERLENGTH=64 -DASSERT -I.. -O3 \
-I ../code -I ../RayPlatform ../RayPlatform/*/*.cpp

./a.out 
