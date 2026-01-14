# Velvet Grid

## Build

```sh
docker build -t slurm-docker-cluster --network=host .

docker compose up -d

srun --partition=compute --mpi=pmi2 -N 1 sleep 100000 &
```
