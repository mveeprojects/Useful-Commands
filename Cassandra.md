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

### Show schema
```shell
describe schema;
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

### SELECT with "OR" alternative (in)
```shell
select * from keyspace.table_name WHERE field_name in ('something','something_else');
```

### COUNT rows
```shell
SELECT COUNT(*) FROM keyspace.table_name;
```

### Batch insert
```shell
BEGIN BATCH
INSERT INTO keyspace.table_name (fieldA, fieldB) VALUES ('hello', 'world');
INSERT INTO keyspace.table_name (fieldA, fieldB) VALUES ('foo', 'bar');
APPLY BATCH;
```

### Batch update
```shell
BEGIN BATCH
UPDATE keyspace.table_name SET fieldA='bonjour', fieldB='earth' WHERE fieldC='blah' AND fieldD='something';
UPDATE keyspace.table_name SET fieldA='ola', fieldB='world' WHERE fieldC='halb' AND fieldD='something_else';
APPLY BATCH;
```

### Make output of Cassandra commands a bit prettier
```shell
EXPAND ON;
```
