
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
