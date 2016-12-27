# Cassandra 2.1.15 with Docker

Pull the image:
- `docker pull cassandra:2.1.15`

Start Cassandra:
- `docker-compose up`

Start Cassandra in background
- `docker-compose up -d`

Stop Cassandra:
- `docker-compose stop`

All data are under the volume:
- `~/volumes/cassandra`

To execute CQL files with a shell script, edit:
- `migration.sh` to execute the appropriate CQL files you want
- `cql/` folder, which contains all CQL files to be executed

You can use the `dcqlsh` tool (similar to cqlsh, but with Docker):
- `./dcqlsh`
- `./dcqlsh -e "select * from system.schema_keyspaces"`
- `./dcqlsh -e "describe table system.schema_keyspaces"`