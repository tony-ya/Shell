#!/bin/sh
# File: /home/mysql/backup.sh
#Database info bakupmysl GGclub 2014/07/10

DB_USER="root"
DB_PASS="123456"

# Others vars

DATE=`date +%Y-%m-%d`
mkdir -p /home/mysqlbak/$DATE
BIN_DIR="/usr/local/mysql/bin"
BCK_DIR="/home/mysqlbak/$DATE"

# TODO
$BIN_DIR/mysqldump --opt -u$DB_USER -p$DB_PASS test > $BCK_DIR/test.sql
