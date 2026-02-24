#!/bin/sh

# This file is part of Velvet-Grid
#
# Made by : Matthias Lapu (CEA)

# What does it do ?
# Launches prometheus on each compute node,
# the path is not generic and is related to the ./Dockerfile that is the *
# `slurm-docker-cluster` img

set -euo pipefail

NODELIST=("c1" "c2" "c3")

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

for compute_node in "${NODELIST[@]}"; do
    log "Launching pcp daemon for $compute_node"
    docker exec $compute_node bash -c "/usr/libexec/pcp/bin/pmcd && /usr/libexec/pcp/bin/pmproxy -A -p 44322"
done
