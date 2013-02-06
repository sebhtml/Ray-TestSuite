function buildRay(){
	
	MAXKMERLENGTH=$1

	mpicxx ../code/plugin_SeedExtender/Direction.cpp ../code/plugin_SequencesIndexer/ReadAnnotation.cpp \
../code/plugin_SeedingData/GraphPath.cpp \
../RayPlatform/*/*.cpp  ../code/plugin_VerticesExtractor/Vertex.cpp test_kmer.cpp  ../code/plugin_Mock/common_functions.cpp  \
../code/plugin_KmerAcademyBuilder/Kmer.cpp -I$CODE -I. -D MAXKMERLENGTH=$MAXKMERLENGTH -DASSERT -I../code -I .. -I ../RayPlatform

}

buildRay 32
./a.out \
TGAAATGGAAATGGTCTGGGAAG

buildRay 64
./a.out \
TGAAATGGAAATGGTCTGGGAAAAACAACTAAAAGATATTATTGTAGTA

buildRay 96
./a.out \
TGAAATGGAAATGGTCTGGGAAAAACAACTAAAAGATATTATTGTAGTAGCTGGTTTTGAAATTTATGACGCTGAAATAACTCCCCACTA

buildRay 128
./a.out \
TGAAATGGAAATGGTCTGGGAAAAACAACTAAAAGATATTATTGTAGTAGCTGGTTTTGAAATTTATGACGCTGAAATAACTCCCCACTATATTTTCACCAAATTTATT

buildRay 75
./a.out \
TGAAATGGAAATGGTCTGGGAAAAACAACTAAAAGATATTATTGTAGTAGCTGGTTTTGAAATTTATGACGCT

buildRay 50
./a.out \
TGAAATGGAAATGGTCTGGGAAAAACAACTAAAAGATATTAT
