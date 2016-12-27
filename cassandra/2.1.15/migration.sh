#!/bin/bash

CASSANDRA_DOCKER_IMAGE=cassandra:2.1.15

function dcqlsh() {
    docker run --name=cqlsh --network=host --volume=$(pwd):/cql:ro --workdir=/cql --rm -it "$CASSANDRA_DOCKER_IMAGE" cqlsh "$@"
}

echo 'Create Keyspace: test'
dcqlsh -f scripts_cql/create-keyspace.cql

for cqlFile in $(ls ./scripts_cql/changelog/*.cql); do
    echo Execute CQL file: "$cqlFile"
    dcqlsh -k "test" -f "$cqlFile"
done
