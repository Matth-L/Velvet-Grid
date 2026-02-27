# Grafana Dashboard: Shared partition

Grafana doesnt allow to query using configuraiont file, thus we need to click and choose,
here's an example of querytaht can be used to make a dashboard.

> Always use Raw Data for datasources

Add at the end of each query, the following transformation :

```
FILTER BY VALUE :
USERNAME IS EQUAL ${__user.login}
```
This allows to get the metrics for each connected user in Grafana.

## 1. CPU Usage Ratio (User/Kernel Mode)
**Data Sources:**
- A: `slurm_user_node_active` (Raw Data)
- B: `cgroup_cpu_stat_usage` (Raw Data)
- C: `cgroup_cpu_stat_user` (Raw Data)

**Transformations:**
1. **Join by field:** `instname`
2. **Filter fields:** `timestamp, username, value2, value3`
3. **Add field:** `value3/value2` (user/kernel ratio)
4. **Filter fields:** `timestamp, username, cpu_stat_user/cpu_stat_usage`
5. **Group by:** `username` (calculate mean)

---

## 2. Average Memory Used
**Data Sources:**
- A: `slurm_user_node_active` (Raw Data)
- B: `cgroup_memory_current` (Raw Data)

**Transformations:**
1. **Join by field:** `instname` (Outer tabular)
2. **Filter fields:** `timestamp, node_name, username, value2`
3. **Group by:** `username` (calculate mean)
- **Unit:** Bytes

---

## 3. Average Page Faults
**Data Sources:**
- A: `slurm_user_node_active` (Raw Data)
- B: `cgroup_memory_stat_pgmajfault` (Raw Data)

**Transformations:**
1. **Join by field:** `instname` (Outer tabular)
2. **Filter fields:** `timestamp, node_name, username, value2`
3. **Group by:** `username` (calculate mean)

---

## 4. Number of CPUs per Job
**Data Source:**
- A: `slurm_user_jobs_cpus_alloc` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 5. Memory Allocated by Slurm
**Data Source:**
- A: `slurm_user_jobs_memory_alloc` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 6. Number of Nodes Allocated per User
**Data Source:**
- A: `slurm_user_jobs_nodes_alloc` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 7. Number of Running Jobs
**Data Source:**
- A: `slurm_user_jobs_running` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 8. Failed User Jobs
**Data Source:**
- A: `slurm_user_jobs_node_failed` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 9. Pending User Jobs
**Data Source:**
- A: `slurm_user_jobs_pending` (Raw Data)

**Transformations:**
1. **Filter fields:** `timestamp, username, value`
2. **Group by:** `username` (sum or count)

---

## 10. Average Cache Memory Used
**Data Sources:**
- A: `slurm_user_node_active` (Raw Data)
- B: `cgroup_memory_stat_file` (Raw Data)

**Transformations:**
1. **Join by field:** `instname` (Outer tabular)
2. **Filter fields:** `timestamp, node_name, username, value2`
3. **Group by:** `username` (calculate mean)
- **Unit:** Bytes

---

## 11. Average Active LRU-list Memory
**Data Sources:**
- A: `slurm_user_node_active` (Raw Data)
- B: `cgroup_memory_stat_active_file` (Raw Data)

**Transformations:**
1. **Join by field:** `instname` (Outer tabular)
2. **Filter fields:** `timestamp, node_name, username, value2`
3. **Group by:** `username` (calculate mean)
- **Unit:** Bytes

# Grafana Dashboard: Single partition

Follow the same logic but with the metrics from `node_exporter` prometheus.