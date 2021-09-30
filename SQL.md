# SQL

### Login as root user
```shell
mysql -u root -p
```

### Create a DB
```shell
create database <db_name>
```

### Create a user
```shell
create user '<username>' identified by '<password>';
```

### Grant access to specific DB for user
```shell
grant all on <db_name>. * to '<username>';
```

### Use source file to create tables, insert data etc.
```shell
source ~/<path_to_file>.mysql
```

### Switch DBs
```shell
use <db_name>;
```

### Show all tables in current DB
```shell
show tables;
```

### Show all field info for a given table
```shell
describe <table_name>;
```

### Insert row into table
```shell
INSERT INTO <table_name>
VALUES (<value1>, <value2>, <value3>, ...);
```
