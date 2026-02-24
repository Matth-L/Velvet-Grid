#/bin/sh

docker compose down
# docker volume rm velvet-grid_opensearch-data
# docker volume rm velvet-grid_grafana-storage
echo "volume cleaned"
docker compose up -d
# ./script/prometheus_node_exporter.sh
# ./script/cgroup_node_exporter.sh
echo "launching script"
./script/create_user.sh
./script/pcp.sh
./script/launch_job.sh
