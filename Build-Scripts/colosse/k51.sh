#!/bin/bash

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

cd ~/git-clones/ray

id=k64
builds=/rap/nne-790-ab/software/RayAppBuilds-BleedingEdge/

make clean

make ASSERT=y DEBUG=y HAVE_LIBZ=y HAVE_LIBBZ2=y J=10 PREFIX=$builds/$id MAXKMERLENGTH=64
make install

