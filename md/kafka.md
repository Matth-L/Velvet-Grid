# Kafka health check

```sh
docker exec -it broker bash
# list topics
/opt/kafka/bin/kafka-topics.sh --list --bootstrap-server broker:29092
# consume topic named "metrics"
/opt/kafka/bin/kafka-console-consumer.sh --topic metrics --from-beginning --bootstrap-server broker:29092
```

# Topic

There is only one topic named `metrics`.