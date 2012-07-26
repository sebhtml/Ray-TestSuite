#!/bin/bash
# run this as root to clean the cache and free memory
# Author: Sébastien Boisvert
# useful when running velvetg after velveth on a buggy Linux
# distribution

# sync everything, brings coherence
sync

cat /proc/sys/vm/drop_caches > defaultValue

# To free pagecache, dentries and inodes:
echo 3 > /proc/sys/vm/drop_caches

cat defaultValue > /proc/sys/vm/drop_caches
