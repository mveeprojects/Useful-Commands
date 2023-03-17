# Mongo

### Run Mongo container
```shell
docker run -d --name mongo -p "27017:27017" --restart always mongo
```

### Show all available DBs
```shell
show dbs
```

### Select a DB to use
```shell
use <db_name>
```

### Show all collections within the selected DB
```shell
show collections
```

### Show all records in a given collection in a DB
```shell
db.<collection_name>.find().pretty()
```

### Insert a document into a collection
```shell
db.<collection_name>.insert( { item: "car", qty: 24 } )
```

### Delete a single document that matches a given filter from a collection
```shell
db.<collection_name>.deleteOne( { "<key>" : <value>) } );
```

### Delete all documents that match a given filter from a collection
```shell
db.<collection_name>.deleteMany( { "<key>" : <value> } );
```

### Delete all documents from a collection
```shell
db.<collection_name>.remove({})
```

### Delete a collection
```shell
db.<collection_name>.drop()
```

### Delete a DB (run 'use <db_name_to_drop>'' first)
```shell
db.dropDatabase()
```

### Find all documents according to a nested field
```shell
db.<collection_name>.find( { "<top_level_field_name>.<second_level_field_name>": "<field_value_to_find>" } ).pretty()
```

### Find all documents that match 2 fields
```shell
db.<collection_name>.find(
    {$and:[
        {"<top_level_field_name>.<second_level_field_name>":{"$in":["<field_value_to_find>"]}},
        {"<top_level_field_name>.<second_level_field_name>":{"$in":["<field_value_to_find>"]}}
    ]}
).pretty()
```

### Show status of cluster, including which node is primary (see "syncingTo" field)
```shell
rs.status()
```

### Find documents with a specific field being a non-empty string
```shell
db.collection.find({"lastname" : {"$exists" : true, "$ne" : ""}})
```

### Find the N most recently added documents
```shell
db.collection.find().limit(N).sort({$natural:-1}).pretty()
```

### Find oldest/newest record
```shell
db.people.insert({name: "Bob", age: 42, dateAdded: new Date()})
db.people.insert({name: "Sally", age: 58, dateAdded: new Date()})

// find oldest record by date field
db.people.find().sort({dateAdded: 1}).limit(1)
[
  {
    _id: ObjectId("64147bdf169b4546e6db2970"),
    name: 'Bob',
    age: 42,
    dateAdded: ISODate("2023-03-17T14:40:31.415Z")
  }
]

// find newest record by date field
db.people.find().sort({dateAdded: -1}).limit(1)
[
  {
    _id: ObjectId("64147be5169b4546e6db2971"),
    name: 'Sally',
    age: 58,
    dateAdded: ISODate("2023-03-17T14:40:37.035Z")
  }
]
```

### Export collection to csv
```shell
docker exec -i 418f46e5595d  mongoexport --db saveInfo --collection infoobjects --type=csv --fields _id,postLink,postTitle,contactPhone --out ./info.csv
```
