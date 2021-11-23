#!/bin/bash

# This script is used to change the master of a replica set.

mariadb -u root -p$MARIADB_ROOT_PASSWORD -e "stop slave; change master to master_host='$MARIADB_REPLICATION_MASTER_HOST', master_port=3306, master_user='$MARIADB_REPLICATION_USER', master_password='$MARIADB_REPLICATION_PASSWORD', master_log_file='master1-bin.000003', master_log_pos=344, MASTER_CONNECT_RETRY=10; start slave;"