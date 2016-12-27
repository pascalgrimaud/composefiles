#!/bin/bash
set -ev

if [[ "$APP" == "cassandra/2.1.15" ]]; then
    cd "$APP"
    docker-compose up -d
    sleep 30
    docker-compose logs
    ./migration.sh
    ./cqlsh -e "select * from system.schema_keyspaces"
    ./cqlsh -k test -e "select * from user"

elif [[ $APP == "mysql/5.7.13" ]]; then
    cd "$APP"
    docker-compose up -d
    sleep 30
    docker-compose logs

fi
