rm -rf core.*

path=$(pwd)

cd ~/git-clones/ray

make clean
make J=30 ASSERT=y DEBUG=y

cd $path

