
mpicxx \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
-g test_coloredPeaks.cpp code/Searcher/ColoredPeakFinder.cpp -I. -o test_coloredPeaks RayPlatform/core/statistics.cpp

prog=$(pwd)/test_coloredPeaks

cd data-for-unit-tests/colored-peaks

$prog TestSuite.txt
