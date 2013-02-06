mpicxx $(find ../RayPlatform/|grep .cpp$|grep -v main) $(find ../code/ -name "*.cpp"|grep -v main)  sff_to_fasta_main.cpp -O3 -o sff_to_fasta -I../ \
-I ../RayPlatform
