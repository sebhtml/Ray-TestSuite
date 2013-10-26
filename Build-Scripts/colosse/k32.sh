#!/bin/bash

. ~/load-modules.sh

commit=$(git log|grep ^commit|head -n1|awk '{print $2}')

build=devel-$commit

#module load apps/ray/$build

cd ~/git-clones/ray

make clean

make -j 8 MAXKMERLENGTH=32 ASSERT=y HAVE_LIBZ=y HAVE_LIBBZ2=y  CXXFLAGS=" -O3 -std=c++98 -Wall -march=native -g" 

destination=/rap/nne-790-ab/software/nne-790-ab/apps/ray/$build

mkdir -p $destination/bin

cp Ray $destination/bin
cp k32.sh $destination

modulefile=/rap/nne-790-ab/modulefiles/nne-790-ab/apps/ray/$build
mkdir -p $modulefile
rm -rf $modulefile

cp /rap/nne-790-ab/modulefiles/nne-790-ab/apps/ray/devel-template $modulefile
operation="s=devel-template=$build=g"
sed -i $operation $modulefile

echo "Installed in $destination"

