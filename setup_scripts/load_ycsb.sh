WORKLOAD_NUM='16-50_95-5'
#WORKLOAD_NUM='1-10_95-5'
#WORKLOAD_NUM='100-100_95-5'
#WORKLOAD_NUM='16-50_100-0'
WORKLOAD_FILE="/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/ycsb_workloads/workload_${WORKLOAD_NUM}"
ROCKSDB_DIR="/mnt/sdb/archive_dbs/${WORKLOAD_NUM}"
COMPACTION_META_PATH="/mnt/sdb/archive_dbs/compaction_meta"
MANIFEST_META_PATH="/mnt/sdb/archive_dbs/manifest_meta"
# LOAD_OUT_FILE="/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Data/${WORKLOAD_NUM}/load_${WORKLOAD_NUM}.csv"
LOAD_OUT_FILE="/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Data/report/load_base_${WORKLOAD_NUM}.csv"
ROCKSDB_CONFIG_FILE='/mnt/sdb/EECS_6897_Distributed_Storage_System_Project_Scripts/rocksdb_config/rocksdb_auto_compaction_16.ini'
SST_WORK_DIR="/mnt/sdb/archive_dbs/sst_dir/sst_last_run"
SST_WORK_DIR_CPY="/mnt/sdb/archive_dbs/sst_dir/sst_${WORKLOAD_NUM}_cpy"

COMPACTION_META_PATH="/mnt/sdb/archive_dbs/compaction_meta"
rm ${COMPACTION_META_PATH}/*

REMOTE_SST_WORK_DIR="/mnt/nvme0n1p4/archive_dbs/sst_dir/sst_last_run"
rm ${REMOTE_SST_WORK_DIR}/*
nvme flush /dev/nvme0n1p4 -n 10

function create_or_remove {
    if [ -d $1 ]; then
        rm -rf $1
    fi
    mkdir -p $1
}

cd /mnt/sdb/YCSB/

echo "create or remove rocksdb working dir"
create_or_remove $ROCKSDB_DIR

echo "create of remove sst work dir"
create_or_remove $SST_WORK_DIR

echo "create or remove compaction meta folder"
create_or_remove $COMPACTION_META_PATH

echo "create or remove manifest meta folder"
create_or_remove $MANIFEST_META_PATH

cgexec -g memory:mlsm \
./bin/ycsb load rocksdb -s \
-P $WORKLOAD_FILE \
-p rocksdb.dir=$ROCKSDB_DIR \
-p rocksdb.optionsfile=$ROCKSDB_CONFIG_FILE \
-threads 12 \
| tee $LOAD_OUT_FILE;

echo "copy sst work dir"
if [ -d $SST_WORK_DIR_CPY ]
then
    rm -rf $SST_WORK_DIR_CPY
fi
cp -rf $SST_WORK_DIR $SST_WORK_DIR_CPY
echo "finished copy to ${SST_WORK_DIR_CPY}"

echo "copy rocksdb working dir"
if [ -d "${ROCKSDB_DIR}_cpy" ]
then
    rm -rf "${ROCKSDB_DIR}_cpy"
fi
cp -rf $ROCKSDB_DIR "${ROCKSDB_DIR}_cpy"
echo "finished copy to ${ROCKSDB_DIR}_cpy"
