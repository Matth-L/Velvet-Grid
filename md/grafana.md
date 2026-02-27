# Visualisation (Grafana Configuration)

The configuration file is `grafana_datasources.yaml`. And is automatically mounted.

## Index Verification & Grafana Access

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

## Manual setup, without the docker mount

Add your first data source :
- Go to the bottom and click on `Find more data source`.
- Choose opensearch
- Install

### OpenSearch Data Source Setup

Configure a new OpenSearch data source in Grafana using the following settings:

| Setting | Value | Configuration Detail |
| :--- | :--- | :--- |
| **URL** | `https://opensearch-node1:9200` | Address of the OpenSearch service. |
| **Auth** | Basic Auth | Use basic authentication. |
| **Skip TLS Verify** | Checked | Ignore TLS certificate errors  |
| **User** | `admin` | OpenSearch Security username. |
| **Password** | `SecureP@ssword1` | OpenSearch Security password. |
| **Index Name** | `prometheus-metrics` | Target index for LDMS metrics. |


# Aggrégation slurm openmetrics

Query A :
```lucene
name:"slurm_user_node_active"
```

Metric : 
count
terms, username.keyword
terms, node_name.keyword
terms, value 
date histogram, @timestamp

value = jobid
terms = nom d'utilisateur
node_name= nom du noeud utilisé


Query B (pour récupérer une métrique prometheus):
```lucene
name: "slurm_user_jobs_cpus_alloc" 
```
Il faut choisir la métrique qui intéresse, voir metric_list.md dans la partie prometheus.
Metric : 
average, value
Terms. username.keyword
date histogram @timestamp

Terms, peut également être node, ou node_name... cela dépend il faut regarder le champ qui nous intéresse 

Transformation : 

Inner
Fied: Value (base field name)


Liste de métrique mis pour B (pour la démo) : 
- slurm_user_jobs_cpus_alloc
- slurm_node_memory_alloc_bytes
- 
# Aggrégation prometheus node_exporter / slurm 

Query A :
```lucene
name:"slurm_user_node_active"
```

Metric : 
average, value 
terms, username.keyword
terms, node_name.keyword
date histogram, @timestamp

value = jobid
terms = nom d'utilisateur
node_name= nom du noeud utilisé


Query B (pour récupérer une métrique prometheus):
```lucene
name: "node_load1" 
```
Il faut choisir la métrique qui intéresse, voir metric_list.md dans la partie prometheus.
Metric : 
average, value
Terms. instance.keyword (pour avoir le nom du noeud)
date histogram @timestamp



AJOUTER A CHAQUE QUERY LE FILTER BY VALUE :

USERNAME IS EQUAL ${__user.login}