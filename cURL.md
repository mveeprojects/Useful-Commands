# cURL

### Perform a cURL request with authentication
```shell
curl --user name:password http://www.example.com
```

### Perform a cURL request including a request header
```shell
curl http://www.example.com -H "Content-Type: application/json"
```

### Perform a cURL request including a request body
```shell
curl -X POST http://www.example.com -H "Content-Type: application/json" --data '{"keyA": "valueA", "keyB": "valueB", "objectA": {"keyC": "valueC"}}'
```

### Perform a cURL request with tracing (includes headers etc. which are not included when using -vvv)
```shell
curl http://google.com --trace-ascii -
```

### Perform a cURL request without body in response (suppress body to /dev/null pseudo-file)
```shell
curl www.google.com -s -o /dev/null
```

### Useful curl flags:
* `--silent` suppresses the download-in-progress stats (but will still show HTML output)
* `--output /dev/null` hides successful output
* `--show-error` shows errors, even when silent mode is enabled
* `--fail` will raise an error if HTTP response is an error code (404, 500 etc.) instead of merely DNS/TCP errors.

### Pretty print JSON response of curl with json_pp
```shell
curl ... | json_pp
```
