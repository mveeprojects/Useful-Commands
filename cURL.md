# cURL

### Perform a cURL request with authentication
`curl --user name:password http://www.example.com`

### Perform a cURL request with tracing (includes headers etc. which are not included when using -vvv)
`curl http://google.com --trace-ascii -`

### Perform a cURL request without body in response (supress body to /dev/null pseudo-file)
`curl www.google.com -s -o /dev/null`

### Useful curl flags:
* `--silent` suppresses the download-in-progress stats (but will still show HTML output)
* `--output /dev/null` hides successful output
* `--show-error` shows errors, even when silent mode is enabled
* `--fail` will raise an error if HTTP response is an error code (404, 500 etc.) instead of merely DNS/TCP errors.