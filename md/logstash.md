# what the data looks like : 
```
event.original:
    {"labels":{"__name__":"slurm_nodes_external","instance":"slurmctld:6817","job":"slurm_nodes"}
```
# Why is the config like this : 

```conf
  grok {
    match => {
        "instance" => "^(?<instance>[^:]+)(?::\d+)?$"
    }
    overwrite => ["instance"]
  }
```
removes the port in the event.original. for the instance field and overwrite it.

--- 

```conf
ruby {
  code => "
    event.get('labels').each do |key, value|
      event.set(key, value)
    end
  "
}
```
parse the labels field.

---

```
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

Retrieves the data from kafka, there is only one topics, the default one named metrics

---

```
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
```

We just use the same data provided by the docker compose to store it in openseach. The topics is changed and the index is named prometheus-metrics.
