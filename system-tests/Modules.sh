module load compilers/gcc/4.7.2
module load mpi/openmpi/1.6.3_gcc

# TODO: move the software tools outside $HOME for the love of computers
export PATH=$HOME/software/MUMmer3.22:$HOME/software/amos-2.0.8/build/bin:$RAY_PATH/scripts:$RAY_TEST_SUITE/scripts:$PATH


