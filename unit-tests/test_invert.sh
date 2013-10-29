mpicxx \
RayPlatform/*/*.cpp \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
code/SeedingData/GraphPath.cpp \
code/Mock/common_functions.cpp test_invert.cpp -g -DCONFIG_MAXKMERLENGTH=32 \
code/KmerAcademyBuilder/Kmer.cpp  -I .

./a.out
