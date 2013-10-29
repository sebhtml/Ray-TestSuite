mpicxx \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
test_novaengine.cpp code/SeedExtender/NovaEngine.cpp -O3 -I. -o test_nova 

for i in $(ls NovaEngine)
do
	./test_nova NovaEngine/$i
done
