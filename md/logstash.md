# what the data looks like (kind of):
```
event.original:
    {"labels":{"__name__":"slurm_nodes_external","instance":"slurmctld:6817","job":"slurm_nodes"}
```
# Why is the config like this : 


## Input

```conf
input {
  kafka {
    bootstrap_servers => "broker:29092"

    topics => [
     "metrics"
    ]
    group_id => "logstash"
    auto_offset_reset => "latest"
    consumer_threads => 1
    codec => "json"
  }
}
```

## Filtering

Multiple things happen in the filtering process of logstash :

- Flattening the data
- Regex to remove port
- Regex to remove cgroup path that are not related to user job
- Adding a new field to slurm metrics "job_id_slurm", it's redundant but allows for a better join
- Removing useless field that are redundant

## Output

The index name for the opensearch database is "prometheus-metrics"
```conf
output {
  opensearch {
    hosts => ["https://opensearch-node1:9200"]
    index => "prometheus-metrics"
    user => "admin"
    password => "SecureP@ssword1"
    ssl => true
    ssl_certificate_verification => false  # it's a demo
  }
}

