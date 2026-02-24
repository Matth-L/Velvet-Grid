## Construction du chemin cgroup

Cette requête permet de construire le chemin cgroup correspondant au job Slurm :

```ppl
source = prometheus-metrics
| where name = "slurm_user_node_active"
| stats max(value) as max_val by username, job
| eval val_str = CAST(CAST(max_val AS LONG) AS STRING)
| eval instname = concat('/system.slice/slurmstepd.scope/job_', val_str)
| fields instname, username, max_val
```

Exemple de résultat :

```text
/system.slice/slurmstepd.scope/job_1
```

---

## Équivalent en SQL (OpenSearch SQL)

```sql
SELECT
  CONCAT('/system.slice/slurmstepd.scope/job_', CAST(CAST(MAX(value) AS LONG) AS STRING)) AS instname,
  username,
  MAX(value) AS max_val
FROM prometheus-metrics
WHERE name = 'slurm_user_node_active'
GROUP BY username, job;
```

## Query final 

```sql
SELECT value
@path = ( SELECT CONCAT('/system.slice/slurmstepd.scope/job_', CAST(CAST(MAX(value) AS LONG) AS STRING))
          FROM prometheus-metrics 
          WHERE name = "slurm_user_node_active")
FROM prometheus-metrics
WHERE name = "cgroup_cpu_stat_user" AND cgroup=@path
GROUP BY username,job;
```

Finalement query modifier dans logstash, il suffit de faire outer (tablular) field: instanme avec transformation

## Grafana

### Ratio CPU usermode / kernel mode

A : Lucene
slurm_user_node_active
Raw Data

B: Lucene
cgroup_cpu_stat_usage
Raw Data

C: Lucene
cgroup_cpu_stat_user
Raw Data

Transformation 1 :
Join by field
instname

Transformation 2 :
Filter fields by name
timestamp,username, value2, value3

Transformation 3 :
Add field from calculation
Binary operation
value3/value2
cgroup_cpu_stat_user/cgroup_cpu_stat_usage

Transformation 4:
Filter fields by name
timestamp, username, cpu_stat_user/cpu_stat_usage

Transformation 5:
Group to nested tables
username : group by
value: calculate: Mean

### Mémoire moyenne utilisé


A: slurm_user_node_active
Raw data 

B: cgroup_memory_current
Raw data

Transformation 1 :
join by field
Outer tabular
instname

Transformation 2 :
filter fields by name
timestamp,node_name,username,value2

Transformation 3:
group to nested table
username group by
value2 calculate mean


A droite aller dans
> Standard options
Unit > Data > Bytes

### Moyenne de pagefault

A: slurm_user_node_active
Raw data 

B: cgroup_memory_stat_pgmajfault
Raw data

Transformation 1 :
join by field
Outer tabular
instname

Transformation 2 :
filter fields by name
timestamp, node_name,username,value2

Transformation 3:
group to nested table
username group by
value2 calculate mean

### Nombre de cpu par jobs

A: slurm_user_jobs_cpus_alloc
Raw data 


Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value

### Mémoire alloué par slurm

A: slurm_user_jobs_memory_alloc
Raw data 

Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value

### Nombre de noeuds alloué par utilisateur

A: slurm_user_jobs_nodes_alloc
Raw data 

Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value

### Nombre de jobs en cours d'execution 


A: slurm_user_jobs_running
Raw data 

Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value

### Job utilisateur échoué

A: slurm_user_jobs_node_failed
Raw data 

Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value

### Job utilisateur en attente

A: slurm_user_jobs_pending
Raw data 

Transformation 1 :
Filer by name
timestamp, username, value

Transformation 2:
Nested tables
group by username
group by value


### Moyenne de mémoire cache utilisé 

A: slurm_user_node_active
Raw data 

B: cgroup_memory_stat_file
Raw data

Transformation 1 :
join by field
Outer tabular
instname

Transformation 2 :
filter fields by name
timestamp,node_name,username,value2

Transformation 3:
group to nested table
username group by
value2 calculate mean


A droite aller dans
> Standard options
Unit > Data > Bytes

### Moyenne de mémoire active LRU-list (File backed memory on active lru list)

A: slurm_user_node_active
Raw data 

B: cgroup_memory_stat_active_file 
Raw data

Transformation 1 :
join by field
Outer tabular
instname

Transformation 2 :
filter fields by name
timestamp,node_name,username,value2

Transformation 3:
group to nested table
username group by
value2 calculate mean


A droite aller dans
> Standard options
Unit > Data > Bytes

