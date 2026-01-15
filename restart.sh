#/bin/bash 

docker volume rm velvet-grid_opensearch-data
docker compose down
docker compose up -d
./launch_prometheus_node_exporter.sh

docker exec opensearch-node1 plugins/opensearch-security/tools/install_demo_configuration.sh -y &