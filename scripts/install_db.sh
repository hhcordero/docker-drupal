#!/bin/bash

mysql --host=$MYSQL_PORT_3306_TCP_ADDR \
        --port=$MYSQL_PORT_3306_TCP_PORT \
        --user=$MYSQL_ENV_MYSQL_USER \
        --password=$MYSQL_ENV_MYSQL_PASSWORD \
        $MYSQL_ENV_MYSQL_DATABASE < $DB_FILE

sleep 15

./run.sh
