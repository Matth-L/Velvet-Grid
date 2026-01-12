# Velvet Grid

## Build

```sh
docker build -t slurm-docker-cluster --network=host .

docker compose up -d

srun --mpi=pmi2 --job-name=my_sleep_job sleep 100000 & # run a job
```
