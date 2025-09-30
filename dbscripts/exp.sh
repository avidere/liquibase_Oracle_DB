#!/bin/bash
export PATH="/opt/oracle/instantclient_21_19:$PATH"
export LD_LIBRARY_PATH="/opt/oracle/instantclient_21_19:$LD_LIBRARY_PATH"

USERID=${1}
DBHOST=${2}
OWNER=${3}
DUMPFILE=${4}
LOGFILE=${5}

# Read password from environment variable instead of argument
PASS=${EXP_DB_PASS}

# Construct EXP command
exp userid=${USERID}/${PASS}@//${DBHOST} owner=${OWNER} file=${DUMPFILE} log=${LOGFILE} constraints=y rows=y consistent=y indexes=y statistics=none grants=n compress=n recordlength=65535 buffer=20480000
