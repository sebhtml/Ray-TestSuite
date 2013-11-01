rm -rf TestX

mpiexec -n 1 \
./Ray -k 63 \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta 200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX 
