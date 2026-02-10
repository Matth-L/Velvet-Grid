# Velvet Grid

## Build

```sh
docker build -t slurm-docker-cluster --network=host .
docker build -t logstash-with-opensearch-plugins --network=host logstash #building logstash
./launch.sh

docker exec -it slurmctld bash
srun --partition=compute --mpi=pmi2 -N 2 sleep 100000 &
```
## Check prometheus health :

http://localhost:9090/targets

## ip list for the cluster

- c3 : 172.18.0.9
- c2 : 172.18.0.10
- prometheus : 172.18.0.3
- slurmdbd : 172.18.0.6
- prometheus-kafka-adapter : 172.18.0.2
- mysql : 172.18.0.5
- c1 : 172.18.0.8
- broker : 172.18.0.4
- slurmctld : 172.18.0.7


Source :

https://www.ateam-oracle.com/howto-exporting-prometheus-data-to-kafka


# In kafka to check if we get all teh data from prometheus:

```sh
docker exec -it broker bash
# list topics
/opt/kafka/bin/kafka-topics.sh --list --bootstrap-server broker:29092
# consume topic named "metrics"
/opt/kafka/bin/kafka-console-consumer.sh --topic metrics --from-beginning --bootstrap-server broker:29092
```

# opensearch data prepper

https://docs.opensearch.org/latest/data-prepper/pipelines/configuration/sources/kafka/

Why data prepper and not logstash ? to test

https://static.sched.com/hosted_files/opensearchconeu2025/18/Data%20Prepper%20or%20Logstash.pdf

Logstash seems better because there can be an infinite number of topics, which is not the case with dataprepper

# Opensearch

```sh
docker exec -it opensearch-node1 bash
sh plugins/opensearch-security/tools/install_demo_configuration.sh -y
```

Something should appear now, if not, wait a bit :

```sh
curl -k -XGET -u admin:SecureP@ssword1 https://localhost:9200
```

opensearch is available here :


https://localhost:9200

thedashboard is available here :

http://localhost:5601

# SLURM NEW METRIC ADDED in prometheus:

"slurm_user_node_active"
