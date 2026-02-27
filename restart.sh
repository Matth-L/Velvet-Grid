#/bin/sh

docker compose down
# try to not remove the volume or else you'll have to re-import and the DB will be empty
# docker volume rm velvet-grid_opensearch-data
# docker volume rm velvet-grid_grafana-storage
docker compose up -d

echo "launching script"
./script/prometheus_node_exporter.sh
./script/cgroup_node_exporter.sh
# ./script/lustre_exporter.sh
./script/create_user.sh
# ./script/pcp.sh
./script/launch_job.sh
