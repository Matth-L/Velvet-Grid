FROM slurm-docker-cluster:latest

# Node only means that a user will have full exclusivity of the node,
# thus -> node_exporter

ARG PROMETHEUS_VERSION=1.10.2
ARG OS=linux
ARG ARCH=amd64
RUN set -x \
    && wget https://github.com/prometheus/node_exporter/releases/download/v${PROMETHEUS_VERSION}/node_exporter-${PROMETHEUS_VERSION}.${OS}-${ARCH}.tar.gz \
    && tar xvfz node_exporter-${PROMETHEUS_VERSION}.${OS}-${ARCH}.tar.gz

RUN dnf -y install golang

RUN set -x \
    && git clone https://github.com/GSI-HPC/lustre_exporter \
    && cd lustre_exporter \
    && make build
