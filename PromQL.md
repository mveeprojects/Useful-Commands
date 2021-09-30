# PromQL

The below queries are based on the metrics outputted by my sample Scala app -> https://github.com/MarkVee87/ScalaAkkaHttp_StartingPoint

### View the cumulative count of metrics per histogram bucket (le)
```shell
span_processing_time_seconds_bucket
```

### View the increase of metrics per histogram bucket (le) during a give time period (2m)
```shell
increase(span_processing_time_seconds_bucket[2m])
```

### View the 99th percentile response time during a give time period (2m)
```shell
histogram_quantile(0.99, sum(rate(span_processing_time_seconds_bucket[2m])) by (le))
```

### View the transactions per second during a give time period (2m)
Wrap the below query in sum() if aggregating metrics from more than one instance
```shell
rate(http_server_requests_total[2m])
```
