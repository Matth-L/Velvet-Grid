#/bin/bash 

docker compose down
docker compose up -d
./launch_prometheus_node_exporter.sh