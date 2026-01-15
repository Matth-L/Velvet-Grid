# Velvet Grid

## Build

```sh
docker build -t slurm-docker-cluster --network=host .

./launch.sh

srun --partition=compute --mpi=pmi2 -N 1 sleep 100000 &
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


# In kafka :

/opt/kafka/bin/kafka-console-consumer.sh --topic metrics --from-beginning --bootstrap-server broker:29092
