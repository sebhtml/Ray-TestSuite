mpicxx \
../RayPlatform/*/*.cpp \
../code/plugin_SeedingData/GraphPath.cpp \
 -I../code ../code/plugin_Mock/common_functions.cpp test_invert.cpp -g -DMAXKMERLENGTH=32 \
../code/plugin_KmerAcademyBuilder/Kmer.cpp  -I .. -I ../RayPlatform

./a.out
