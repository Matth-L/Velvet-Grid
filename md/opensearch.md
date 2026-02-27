# OpenSearch

After starting the container, you must initialize the security configuration inside the OpenSearch node.

## 1. Enter the container

```sh
docker exec -it opensearch-node1 bash
```

This opens a shell inside the running OpenSearch container.

## 2. Install the demo security configuration

```sh
sh plugins/opensearch-security/tools/install_demo_configuration.sh -y
```

## 3. Check that OpenSearch is running

If nothing appears immediately, wait a few seconds, then run:

```sh
curl -k -XGET -u admin:SecureP@ssword1 https://localhost:9200
```


If OpenSearch is working, you should receive a JSON response with cluster information.

## 4. Access the web interfaces

If opensearch dashboards is enabled (uncomment in the docker compose) , it's available at [http://localhost:5601](http://localhost:5601).

Login credentials:

* **Username:** `admin`
* **Password:** `SecureP@ssword1`
