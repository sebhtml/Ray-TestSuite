mpicxx \
../RayPlatform/*/*.cpp \
../code/SeedingData/GraphPath.cpp \
 -I../code ../code/Mock/common_functions.cpp test_invert.cpp -g -DMAXKMERLENGTH=32 \
../code/KmerAcademyBuilder/Kmer.cpp  -I .. -I ../RayPlatform

./a.out
