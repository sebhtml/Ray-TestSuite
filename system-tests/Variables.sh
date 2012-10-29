
moabShowQueue=/opt/moab/bin/showq
moabSubmitJob=/opt/moab/bin/msub
sgeShowQueue=/usr/local/ge6.2u5/bin/lx24-amd64/qstat
sgeSubmitJob=/usr/local/ge6.2u5/bin/lx24-amd64/qsub

export RAY_TEST_SUITE=~/git-clones/Ray-TestSuite
export RAY_PATH=$RAY_TEST_SUITE/system-tests/builds/build-vanilla
export RAY_SOURCE=~/git-clones/ray
export PATH=~/git-clones/ray/scripts:$PATH
export PATH=~/git-clones/Ray-TestSuite/scripts:$PATH
export PATH=~/software/MUMmer3.22:$PATH
export PATH=~/software/amos-2.0.8/build/bin:$PATH
export qstat=$moabShowQueue
export qsub=$moabSubmitJob
