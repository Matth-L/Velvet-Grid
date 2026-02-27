FROM slurm-docker-cluster:latest

# if there is node-sharing, we must use cgroup_exporter

RUN dnf -y install \
    golang


RUN set -x \
    && git clone https://github.com/arianvp/cgroup-exporter.git \
    && cd cgroup-exporter \
    && go build -v -x .
