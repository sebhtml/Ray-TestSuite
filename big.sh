rm -rf TestX

mpiexec -n 30 -output-filename TestX \
 ~/Ray \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
 -search RayKmerSearchStuff/2011-12-23/Bacteria-Genomes \
 -search RayKmerSearchStuff/2011-12-23/Bacteria-ProteinCodingGenes \
 -search RayKmerSearchStuff/2011-12-23/Bacteria-RNAGenes \
 -search RayKmerSearchStuff/2011-12-23/Viruses-Genomes \
 -search RayKmerSearchStuff/2011-12-23/Viruses-ProteinCodingGenes \
 -search RayKmerSearchStuff/2011-12-23/Viruses-RNAGenes 

