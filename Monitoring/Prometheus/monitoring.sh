docker run \
-d \
--name prometheus \
-p 9099:9090 \
-v /pathtohere/prometheus.yml:/etc/prometheus/prometheus.yml \
prom/prometheus