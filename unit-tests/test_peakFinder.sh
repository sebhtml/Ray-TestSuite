mpicxx \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
peakFinder.cpp code/Library/LibraryPeakFinder.cpp -I. -o peaks RayPlatform/core/statistics.cpp

mpicxx \
code/SeedingData/PathHandle.cpp \
-I .. \
-g test_peakFinder.cpp code/Library/LibraryPeakFinder.cpp  -o test_peaks -I. RayPlatform/core/statistics.cpp

for i in $(ls Libraries/*.test)
do
	echo "*********************************"
	echo "Testing $i"
	./test_peaks $(echo $i|sed 's/.test/.txt/g') $i
done

