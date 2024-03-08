# Cassandra

### Enter a cqlsh session on a running dockerised Cassandra
```cql
docker exec -it cassandra_container_name_or_id cqlsh
```

### Show all keyspaces
```cql
describe keyspaces
```

### Use a keyspace
```cql
use keyspace_name;
```

### Show all tables
```cql
describe tables;
```

### Show schema
```cql
describe schema;
```

### Create table with PK(partition_key, clustering_column)
```cql
CREATE TABLE table_name(name text, age text, job text, PRIMARY KEY (name, age));
```

### Insert into table
```cql
INSERT INTO table_name (name, age, job) VALUES ("Mark", "21", "Developer");
```

### Basic SELECT statement
```cql
select * from table_name;
```

### SELECT statement with WHERE and LIMIT
```cql
select * from table_name where field_name='field_value' limit 1;
```

### SELECT statement with WHERE on non-PK field (allow filtering)
```cql
select * from table_name where non_pk_field_name='field_value' allow filtering;
```

### SELECT with "OR" alternative (in)
```cql
select * from keyspace.table_name WHERE field_name in ('something','something_else');
```

### COUNT rows
```cql
SELECT COUNT(*) FROM keyspace.table_name;
```

### Batch insert
```cql
BEGIN BATCH
INSERT INTO keyspace.table_name (fieldA, fieldB) VALUES ('hello', 'world');
INSERT INTO keyspace.table_name (fieldA, fieldB) VALUES ('foo', 'bar');
APPLY BATCH;
```

### Batch update
```cql
BEGIN BATCH
UPDATE keyspace.table_name SET fieldA='bonjour', fieldB='earth' WHERE fieldC='blah' AND fieldD='something';
UPDATE keyspace.table_name SET fieldA='ola', fieldB='world' WHERE fieldC='halb' AND fieldD='something_else';
APPLY BATCH;
```

### Make output of Cassandra commands a bit prettier
```cql
EXPAND ON;
```
