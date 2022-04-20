# Kafka CLI

### Downloading Kafka (inc CLI)
http://cloudurable.com/blog/kafka-tutorial-kafka-from-command-line/index.html

### Cheat sheet for CLI
https://medium.com/@TimvanBaarsen/apache-kafka-cli-commands-cheat-sheet-a6f06eac01b

### List all consumer groups
```shell
kafka kafka-consumer-groups --bootstrap-server kafka.moffatt.me:9092 --list
```

### Inspect a consumer group
```shell
kafka-consumer-groups --bootstrap-server kafka.moffatt.me:9092 --describe --group <consumer_group>
```

### Reset offsets for all topics for a consumer group (replace `--all-topics` with `--topic` to specify a topic instead)
```shell
kafka-consumer-groups --bootstrap-server kafka.moffatt.me:9092 --group <consumer_group> --reset-offsets --all-topics --to-earliest
```

### Run [kcat](https://github.com/edenhill/kcat) (formerly kafkacat) container to connect to Kafka broker on custom bridge network and list topics
```shell
docker run --network=my-network --name kcat edenhill/kcat:1.7.1 -b kafka-container-name:9092 -L
```

### kcat publish to topic (interactive, ctrl-D to exit) from confluent docs [here](https://docs.confluent.io/platform/current/app-development/kafkacat-usage.html#producer-mode)
```shell
docker run -it --network=my-network --name kcat edenhill/kcat:1.7.1 -b kafka-container-name:9092 -t test-topic -P
```
