# Postgres

### Useful reference 
https://www.postgresqltutorial.com/

### More useful commands
http://jazstudios.blogspot.com/2010/06/postgresql-login-commands.html

### Create and run local Postres docker container
```shell
docker run -d --name=postgres -e POSTGRES_USER=mark -e POSTGRES_PASSWORD=password postgres
```

### Login to above docker container
```shell
docker exec -it postgres psql -U mark
```

### Show all tables
```shell
\dt
```

### Describe a table (use \d+ to get additional info)
```shell
\d table_name
```

### Create very basic table with auto-incrementing (SERIAL) primary key
```shell
CREATE TABLE mytable (
  id SERIAL PRIMARY KEY
);
```
