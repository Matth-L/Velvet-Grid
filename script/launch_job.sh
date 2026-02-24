#!/bin/bash
# This script launches one job per user, with each job in /shared/compute/sleep.sh
# Mapping: userA -> project1, userB -> project2, userC -> project3

set -euo pipefail
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

CONTAINER="slurmctld"
# the file is shared using docker mount in /shared in the host
SCRIPT_PATH="/shared/sleep.sh"
WALLTIME="00:12:00"

log "Launching jobs"

# Launch job for userA
log "Launching job as usera for project1..."
docker exec -u "usera:usera" "$CONTAINER" \
    srun --partition=compute --account=project1 --mpi=pmi2 -N 1 "$SCRIPT_PATH" &

# Launch job for userB
log "Launching job as userb for project2..."
docker exec -u "userb:userb" "$CONTAINER" \
    srun --partition=compute --account=project2 --mpi=pmi2 -N 1 "$SCRIPT_PATH" &

# Launch job for userC
log "Launching job as userc for project3..."
docker exec -u "userc:userc" "$CONTAINER" \
    srun --partition=debug --account=project3 --mpi=pmi2 -N 1 "$SCRIPT_PATH" &

log "All jobs launched."
