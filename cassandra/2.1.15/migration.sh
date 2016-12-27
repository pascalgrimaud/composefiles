#!/bin/bash

CASSANDRA_DOCKER_IMAGE=cassandra:2.1.15

function cqlsh() {
    docker run --name=cqlsh --network=host --volume=$(pwd):/cql:ro --workdir=/cql --rm -it "$CASSANDRA_DOCKER_IMAGE" cqlsh "$@"
}

echo 'Create Keyspace: test'
cqlsh -f scripts_cql/create-keyspace.cql

for cqlFile in $(ls ./scripts_cql/changelog/*.cql); do
    echo Execute CQL file: "$cqlFile"
    cqlsh -k "test" -f "$cqlFile"
done
