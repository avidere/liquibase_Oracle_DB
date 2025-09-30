#!/bin/bash
export PATH = "/opt/oracle/instantclient_21_19:$PATH"
export LD_LIBRARY_PATH = "/opt/oracle/instantclient_21_19:$LD_LIBRARY_PATH"

export EXP_CMD="exp userid=LIQUIBASE_DEV01/admin123@XEPDB1 owner=LIQUIBASE_DEV01 file=dumpfile.dmp log=dump_log.log constraints=y consistent=y indexes=y statitcs=none grant=n compress=n recordlength=65535 buffer=20480000"
echo EXP_CMD=${EXP_CMD}
${EXP_CMD}