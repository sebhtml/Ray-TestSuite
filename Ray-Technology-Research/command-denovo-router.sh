rm -rf TestX

# 3^3 = 27
# (3-1)*3 = 6

#-show-communication-events \

mpiexec -n 25 -output-filename TestX \
 ./Ray \
-route-messages \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX 

