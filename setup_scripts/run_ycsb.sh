#!/bin/bash

# Example usage:
# ./run_ycsb.sh \
# -w workload_1-10_95-5 \
# -c rocksdb_no_auto_compaction.ini \
# -r my_rocksdb \
# -v 1 \
# -l 1-10_95-5/load_data_1-10_95-5_no_auto_compaction.ini \
# -d 1-10_95-5/run_data_1-10_95-5_no_auto_compaction.ini

VERSION=0
ROCKSDB_REPO="https://github.com/facebook/rocksdb.git"
BRANCH="my_test_branch"

while getopts w:c:r:v:l:d: flag
do
  case "${flag}" in
    w) WORKLOAD_FILE=${OPTARG};;
    c) CONFIGURATION_FILE=${OPTARG};;
    r) ROCKSDB_DIR=${OPTARG};;
    v) VERSION=${OPTARG};; # 0 for unmodified version, 1 for modified version
    l) LOAD_OUT_FILE=${ORTARG};;
    d) RUN_OUT_FILE=${OPTARG};;
  esac
done

# Without absolute path, all paths are concatenated after /mnt/sdb
echo "workload file path: $WORKLOAD_FILE";
echo "configuration file path: $CONFIGURATION_FILE";
echo "rocksdb working dir: $ROCKSDB_DIR";
if [ $VERSION = 0 ];
then
  echo "use unmodified rocksdb";
else
  echo "use modified rocksdb";
  ROCKSDB_REPO="https://github.com/camelboat/my_rocksdb"
fi

# Go to /mnt/sdb
cd /mnt/sdb

# Remove the last rocksdb instance
rm -rf ROCKSDB_DIR;

# Download rocksdb and compile it
git clone ROCKSDB_REPO;
cd $ROCKSDB_DIR
if [ $VERSION = 0 ];
then
  git checkout -b 97bf78721b7d9c1fa25e6a9b38b693d45e85196d;
else
  git checkout $BRANCH
fi
sed -i '24iJAVA_HOME = "/usr/lib/jvm/default-java"' Makefile
make -j32 rocksdbjava

# Go to the directory of YCSB and run benchmarks
cd /mnt/sdb/YCSB

# Load the database
./bin/ycsb load rocksdb -s \
-P /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/ycsb_workloads/$WORKLOAD_FILE \
-p rocksdb.dir=/mnt/sdb/$ROCKSDB_DIR \
-p rocksdb.optionsfile=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/rocksdb_config/rocksdb_auto_compaction.ini \
-threads 12 \
| tee /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Data/$LOAD_OUT_FILE

# Run the experiment
./bin/ycsb run rocksdb -s \
-P /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/ycsb_workloads/$WORKLOAD_FILE \
-p rocksdb.dir=/mnt/sdb/$ROCKSDB_DIR \
-p rocksdb.optionsfile=/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/rocksdb_config/$CONFIGURATION_FILE \
-threads 16 \
-p hdrhistogram.percentiles=50,90,95,99,99.9 \
| tee /mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Data/$RUN_OUT_FILE