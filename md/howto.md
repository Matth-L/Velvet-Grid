# STEP 4: Visualisation (Grafana Configuration)

This step involves verifying that the metrics have been indexed in OpenSearch and configuring the Grafana dashboard to display user-specific metrics using transformations.

## 4.1 Index Verification & Grafana Access

1. confirm the OpenSearch index has been created

**Verify Index Name:**

```sh
curl -k -XGET -u admin:SecureP@ssword1 https://localhost:9200/_cat/indices?v
```

**Access Grafana:**

Open : 
http://localhost:3000/

| Credential | Value |
| :--- | :--- |
| **User** | `admin` |
| **Password** | `SecureGrafanaPassword1` |

-----

Add your first data source : 
- Go to the bottom and click on `Find more data source`.
- Choose opensearch
- Install

## 4.2 OpenSearch Data Source Setup

Configure a new OpenSearch data source in Grafana using the following settings:

| Setting | Value | Configuration Detail |
| :--- | :--- | :--- |
| **URL** | `https://opensearch-node1:9200` | Address of the OpenSearch service. |
| **Auth** | Basic Auth | Use basic authentication. |
| **Skip TLS Verify** | Checked | Ignore TLS certificate errors  |
| **User** | `admin` | OpenSearch Security username. |
| **Password** | `SecureP@ssword1` | OpenSearch Security password. |
| **Index Name** | `prometheus-metrics` | Target index for LDMS metrics. |

Version is automatically detected

-----

# logstash 

desfois instance = node_name, instance sera donnée par prometheus node_exporter, node_name, sera donnée par slurm directement

# Logiques des aggrégations 

Le mapping user <-> node  <-> jobid est déjà dans slurm_user_node_active donc il faut filtrer et prendre "name" = slurm_user_node_active

Pour récupérer les query prometheus, il faut faire l'agrégation 

exemple : "instance" = c1 -> vient de prometheus
          "node_name" = c1 -> vient de slurm open metrics
          
        
        
Le champ "job" des requêtes est donnée dans le fichier prometheus.yml.
