#!/bin/bash
set -ev

if [[ "$APP" == "cassandra/2.1.15" ]]; then
    cd "$APP"
    docker-compose up -d
    sleep 30
    ./migration.sh
    docker-compose logs
    ./dcqlsh -e "select * from system.schema_keyspaces"
    ./dcqlsh -k test -e "select * from user"

elif [[ "$APP" == "mysql/5.7.13" ]]; then
    cd "$APP"
    docker-compose up -d
    sleep 30
    docker-compose logs

elif [[ "$APP" == "jhipster-registry" ]]; then
    cd "$APP"
    docker-compose up -d
    sleep 30
    docker-compose logs
    curl -v http://localhost:8761

    cd ../jhipster-gateway
    docker-compose up -d
    sleep 60
    docker-compose logs
    curl -v http://localhost:8088
fi
