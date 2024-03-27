# ElasticSearch

### Search by wildcard ("field contains x string")
[Wildcard documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-wildcard-query.html)
```json
{
  "query": {
    "wildcard": {
      "some.field_name": {
        "value": "substring_you_want_to_find"
      }
    }
  }
}
```
