# Cassandra

### Enter a cqlsh session on a running dockerised Cassandra
```shell
docker exec -it cassandra_container_name_or_id cqlsh
```

### Show all keyspaces
```shell
describe keyspaces
```

### Use a keyspace
```shell
use keyspace_name;
```

### Show all tables
```shell
describe tables;
```

### Basic SELECT statement
```shell
select * from table_name;
```

### SELECT statement with WHERE and LIMIT
```shell
select * from table_name where field_name='field_value' limit 1;
```

### SELECT statement with WHERE on non-PK field (allow filtering)
```shell
select * from table_name where non_pk_field_name='field_value' allow filtering;
```

### Make output of Cassandra commands a bit prettier
```shell
EXPAND ON;
```
