#!/bin/bash

# What does it do ?
# Launches prometheus on each compute node,
# the path is not generic and is related to the dockerfile
# `node_only` img

set -euo pipefail

NODELIST=("c3")

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

for compute_node in "${NODELIST[@]}"; do
    log "Launching lustre exporter for $compute_node"
    docker exec $compute_node bash -c "./lustre_exporter/lustre_exporter &"
done
