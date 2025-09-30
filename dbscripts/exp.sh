#!/bin/bash
export PATH = "/opt/oracle/instantclient_21_19:$PATH"
export LD_LIBRARY_PATH = "/opt/oracle/instantclient_21_19:$LD_LIBRARY_PATH"


# export USERID=${1}
# export DBHOST=${2}
# export OWNER=${3}
# export DUMPFILE=${4}
# export LOGFILE=${5}
# export PASS=${6}

# echo USERID=${USERID}
# echo DBHOST=${DBHOST}
# echo OWNER=${OWNER}
# echo DUMPFILE=${DUMPFILE}
# echo LOGFILE=${LOGFILE}
# echo PASS=${PASS}


# exp userid=TEMPADMIN@WKSTQA1 owner=WKSDEPMSUAT file=/path/file_name.dmp log=/path/exportdep.log constraints=y rows=y consistent=y indexes=y statistics=none grants=n compress=n recordlength=65535å buffer=20480000
export EXP_CMD="exp userid=LIQUIBASE_DEV01/admin123@XEPDB1 owner=LIQUIBASE_DEV01 file=DUMPFILE.dmp log=LOGFILE.log constraints=y rows=y consistent=y indexes=y statistics=none grants=n compress=n recordlength=65535 buffer=20480000"

echo EXP_CMD=${EXP_CMD}

${EXP_CMD}