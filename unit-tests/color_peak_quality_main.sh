
g++ \
color_peak_quality_main.cpp code/Searcher/QualityCaller.cpp -I .   -o QualityCaller \
RayPlatform/core/statistics.cpp -DCONFIG_ASSERT \
code/SequencesLoader/ReadHandle.cpp \
code/SeedingData/PathHandle.cpp \
 -DCONFIG_CALLER_VERBOSE \
 -DCONFIG_CALLER_VERBOSE_POINTS
