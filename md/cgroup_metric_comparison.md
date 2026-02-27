> **Reminder:** cgroup metrics are located at
> `/sys/fs/cgroup/system.slice/slurmstepd.scope/job_<job_id>/step_<step_id>`
>
> where `<job_id>` corresponds to the Slurm job ID (for example: `job_1`) and `<step_id>` to the job step (for example: `step_0`).

# cgroup exporter V2 All metrics

```
cgroup_cpu_burst_seconds_total
cgroup_cpu_bursts_total
cgroup_cpu_core_sched_force_idle_seconds_total
cgroup_cpu_periods_total
cgroup_cpu_system_seconds_total
cgroup_cpu_throttled_seconds_total
cgroup_cpu_throttled_total
cgroup_cpu_usage_seconds_total
cgroup_cpu_user_seconds_total
cgroup_memory_active_anon_bytes
	Amount of memory on the active anonymous list
cgroup_memory_active_file_bytes
	Amount of memory on the active file list
cgroup_memory_anon_bytes
	Amount of memory used in anonymous mappings such as brk(), sbrk(), and mmap(MAP_ANONYMOUS)
cgroup_memory_anon_thp_bytes
	Amount of memory used in anonymous mappings backed by transparent hugepages
cgroup_memory_current_bytes
cgroup_memory_events_high_total
cgroup_memory_events_low_total
cgroup_memory_events_max_total
cgroup_memory_events_oom_group_kill_total
cgroup_memory_events_oom_kill_total
cgroup_memory_events_oom_total
cgroup_memory_file_bytes
	Amount of memory used to cache filesystem data, including tmpfs and shared memory.
cgroup_memory_file_dirty_bytes
	Amount of cached filesystem data that was modified but not yet written back to disk
cgroup_memory_file_mapped_bytes
	Amount of cached filesystem data mapped with mmap()
cgroup_memory_file_thp_bytes
	Amount of cached filesystem data backed by transparent hugepages
cgroup_memory_file_writeback_bytes
	Amount of cached filesystem data that was modified and is currently being written back to disk
cgroup_memory_inactive_anon_bytes
	Amount of memory on the inactive anonymous list
cgroup_memory_inactive_file_bytes
	Amount of memory on the inactive file list
cgroup_memory_kernel_bytes
	Amount of total kernel memory, including (kernel_stack, pagetables, percpu, vmalloc, slab) in addition to other kernel memory use cases.
cgroup_memory_kernel_stack_bytes
	Amount of memory allocated to kernel stacks.
cgroup_memory_low_bytes
cgroup_memory_min_bytes
cgroup_memory_pagetables_bytes
	Amount of memory allocated for page tables.
cgroup_memory_percpu_bytes
	Amount of memory used for storing per-cpu kernel data structures.
cgroup_memory_pgactivate
	Amount of pages moved to the active LRU list.
cgroup_memory_pgdeactivate
	Amount of pages moved to the inactive LRU list.
cgroup_memory_pgfault
	Total number of page faults incurred.
cgroup_memory_pglazyfree
	Amount of pages postponed to be freed under memory pressure.
cgroup_memory_pglazyfreed
	Amount of reclaimed lazyfree pages.
cgroup_memory_pgmajfault
	Number of major page faults incurred.
cgroup_memory_pgrefill
	Amount of scanned pages (in an active LRU list).
cgroup_memory_pgscan
	Amount of scanned pages (in an inactive LRU list)
cgroup_memory_pgscan_direct
	Amount of scanned pages directly (in an inactive LRU list)
cgroup_memory_pgscan_khugepaged
	Amount of scanned pages by khugepaged (in an inactive LRU list)
cgroup_memory_pgscan_kswapd
	Amount of scanned pages by kswapd (in an inactive LRU list)
cgroup_memory_pgsteal
	Amount of reclaimed pages.
cgroup_memory_pgsteal_direct
	Amount of reclaimed pages directly
	Amount of reclaimed pages by khugepaged
cgroup_memory_pgsteal_kswapd
	Amount of reclaimed pages by kswapd
cgroup_memory_sec_pagetables_bytes
	Amount of memory allocated for secondary page tables, this currently includes KVM mmu allocations on x86 and arm64 and IOMMU page tables.
cgroup_memory_shmem_bytes
	Amount of cached filesystem data that is swap-backed, such as tmpfs, shm segments, shared anonymous mmap()s
cgroup_memory_shmem_thp_bytes
	Amount of shm, tmpfs, shared anonymous mmap()s backed by transparent hugepages
cgroup_memory_slab_bytes
	Amount of memory used for storing in-kernel data structures.
cgroup_memory_slab_reclaimable_bytes
	Amount of slab memory that might be reclaimed, such as dentries and inodes.
cgroup_memory_slab_unreclaimable_bytes
	Amount of slab memory that cannot be reclaimed under memory pressure.
cgroup_memory_sock_bytes
	Amount of memory used in network transmission buffers
cgroup_memory_swap_current_bytes
cgroup_memory_swapcached_bytes
	Amount of swap cached in memory. The swapcache is accounted against both memory and swap usage.
cgroup_memory_thp_collapse_alloc
	Number of transparent hugepages allocated to allow collapsing an existing range of pages.
cgroup_memory_thp_fault_alloc
	Number of transparent hugepages allocated to satisfy a page fault.
cgroup_memory_thp_swpout
	Number of transparent hugepages which are swapout in one piece without splitting.
cgroup_memory_thp_swpout_fallback
	Number of transparent hugepages split before swapout due to failed allocation of continuous swap space.
cgroup_memory_unevictable_bytes
	Amount of memory that cannot be reclaimed
cgroup_memory_vmalloc_bytes
	Amount of memory used for vmap backed memory.
cgroup_memory_workingset_activate_anon
	Number of refaulted anonymous pages that were immediately activated.
cgroup_memory_workingset_activate_file
	Number of refaulted file pages that were immediately activated.
cgroup_memory_workingset_nodereclaim
	Number of times a shadow node has been reclaimed.
cgroup_memory_workingset_refault_anon
	Number of refaults of previously evicted anonymous pages.
cgroup_memory_workingset_refault_file
	Number of refaults of previously evicted file pages.
cgroup_memory_workingset_restore_anon
	Number of restored anonymous pages detected as an active workingset before they got reclaimed.
cgroup_memory_workingset_restore_file
	Number of restored file pages detected as an active workingset before they got reclaimed.
cgroup_memory_zswap_bytes
	Amount of memory consumed by the zswap compression backend.
cgroup_memory_zswap_current_bytes
cgroup_memory_zswapped_bytes
	Amount of application memory swapped out to zswap.
cgroup_memory_zswpin
	Number of pages moved in to memory from zswap.
cgroup_memory_zswpout
	Number of pages moved out of memory to zswap.
cgroup_memory_zswpwb
	Number of pages written from zswap to swap.
```

# CPU comparison

## PMPROXY cgroup CPU :
```
cgroup_cpu_stat_usage
cgroup_cpu_stat_user
cgroup_cpu_stat_system
cgroup_cpu_stat_kernel
```

## cgroup v2 :
```
cgroup_cpu_burst_seconds_total
cgroup_cpu_bursts_total
cgroup_cpu_core_sched_force_idle_seconds_total
cgroup_cpu_periods_total
cgroup_cpu_system_seconds_total
cgroup_throttled_total
cgroup_throttled_seconds_total
cgroup_cpu_usage_seconds_total
cgroup_cpu_user_seconds_total
```

## standard cgroup exporter :
```
cgroup_cpu_system_seconds{cgroup="/user.slice/user-20821.slice"} 1.96
cgroup_cpu_total_seconds{cgroup="/user.slice/user-20821.slice"} 3.817500568
cgroup_cpu_user_seconds{cgroup="/user.slice/user-20821.slice"} 1.61
cgroup_cpus{cgroup="/user.slice/user-20821.slice"} 0
cgroup_cpu_info{cgroup="/user.slice/user-20821.slice",cpus=""} 1
```
