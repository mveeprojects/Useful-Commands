# Cassandra

### Enter a cqlsh session on a running dockerised Cassandra
```shell
docker exec -it cassandra_container_name_or_id cqlsh
```

### Show all keyspaces
```shell
describe keyspaces
```

### Show all tables
```shell
describe tables;
```

### Basic SELECT statement
```shell
select * from table_name;
```