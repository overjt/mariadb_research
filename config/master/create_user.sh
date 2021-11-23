#!/bin/bash

# Connects to local mariadb instance and creates a user
# Gets the username and password from the environment variables

mariadb -u root -p$MARIADB_ROOT_PASSWORD -e "CREATE USER '$MARIADB_REPLICATION_USER'@'%' IDENTIFIED BY '$MARIADB_REPLICATION_PASSWORD'; GRANT REPLICATION SLAVE ON *.* TO '$MARIADB_REPLICATION_USER'@'%'; FLUSH PRIVILEGES;"