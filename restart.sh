#/bin/bash

docker compose down
docker volume rm velvet-grid_opensearch-data
docker volume rm velvet-grid_grafana-storage
docker compose up -d
# ./script/prometheus_node_exporter.sh
 ./script/cgroup_node_exporter.sh
