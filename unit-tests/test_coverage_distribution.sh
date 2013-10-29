g++ \
code/SeedingData/PathHandle.cpp \
code/SequencesLoader/ReadHandle.cpp \
coverage_main.cpp code/CoverageGatherer/CoverageDistribution.cpp -O3 -o CoverageExe -I . 

for i in $(ls CoverageDistribution/*.expected)
do
	./CoverageExe $(echo $i|sed 's/.expected//g') $i
done> cov.log

echo "Passed $(grep Passed cov.log|grep Test|wc -l) tests"
echo "Failed $(grep Failed cov.log|grep Test|wc -l) tests"
grep Failed cov.log|grep Test
echo "see cov.log"
