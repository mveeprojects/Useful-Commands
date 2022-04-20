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

### Run kcat (formerly kafkacat) container to connect to Kafka broker on custom bridge network and list topics
```shell
docker run -it --network=my-network edenhill/kcat:1.7.1 -b kafka-container-name:9092 -L
```
