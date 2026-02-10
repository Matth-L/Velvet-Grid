In opensearchDashbord,  metric is named :

value = jobid

```
name:
    slurm_user_node_active
value:
    1
labels.__name__:
    slurm_user_node_active
labels.instance:
    slurmctld:6817
labels.job:
    slurm_useracct
labels.node_name:
    c3
labels.username:
    root
timestamp:
    Feb 4, 2026 @ 11:12:21.000
_id:
    lc8jKJwBhkT90AN7wg62
_type:
    -
_index:
    prometheus-metrics
_score:
    -
```

Dans les autres données slurm on a :

```
labels.username
```
Dans les données prometheus on a :

```
labels.instance :     c3:9100
```

l'aggrégation devrait pouvoir se faire.


List of all metrics that are in Kafka related to slurm : 
```sh
# metrics.scrape_duration_seconds
# metrics.scrape_samples_post_metric_relabeling
# metrics.scrape_samples_scraped
# metrics.scrape_series_added
# metrics.slurm_account_jobs
# metrics.slurm_account_jobs_bootfail
# metrics.slurm_account_jobs_cancelled
# metrics.slurm_account_jobs_completed
# metrics.slurm_account_jobs_completing
# metrics.slurm_account_jobs_configuring
# metrics.slurm_account_jobs_cpus_alloc
# metrics.slurm_account_jobs_deadline
# metrics.slurm_account_jobs_expediting
# metrics.slurm_account_jobs_failed
# metrics.slurm_account_jobs_fed_requeued
# metrics.slurm_account_jobs_finished
# metrics.slurm_account_jobs_hold
# metrics.slurm_account_jobs_memory_alloc
# metrics.slurm_account_jobs_node_failed
# metrics.slurm_account_jobs_nodes_alloc
# metrics.slurm_account_jobs_outofmemory
# metrics.slurm_account_jobs_pending
# metrics.slurm_account_jobs_powerup_node
# metrics.slurm_account_jobs_preempted
# metrics.slurm_account_jobs_requeued
# metrics.slurm_account_jobs_resizing
# metrics.slurm_account_jobs_revoked
# metrics.slurm_account_jobs_running
# metrics.slurm_account_jobs_signaling
# metrics.slurm_account_jobs_stageout
# metrics.slurm_account_jobs_started
# metrics.slurm_account_jobs_suspended
# metrics.slurm_account_jobs_timeout
# metrics.slurm_account_node_active
# metrics.slurm_agent_cnt
# metrics.slurm_agent_queue_size
# metrics.slurm_agent_thread_cnt
# metrics.slurm_backfilled_het_jobs
# metrics.slurm_backfilled_jobs
# metrics.slurm_bf_active
# metrics.slurm_bf_cycle_cnt
# metrics.slurm_bf_cycle_last
# metrics.slurm_bf_cycle_max
# metrics.slurm_bf_cycle_tot
# metrics.slurm_bf_depth_mean
# metrics.slurm_bf_depth_tot
# metrics.slurm_bf_depth_try_tot
# metrics.slurm_bf_exit_end
# metrics.slurm_bf_exit_max_job_start
# metrics.slurm_bf_exit_max_job_test
# metrics.slurm_bf_exit_state_changed
# metrics.slurm_bf_exit_table_limit
# metrics.slurm_bf_exit_timeout
# metrics.slurm_bf_last_depth
# metrics.slurm_bf_last_depth_try
# metrics.slurm_bf_mean_cycle
# metrics.slurm_bf_mean_table_sz
# metrics.slurm_bf_queue_len
# metrics.slurm_bf_queue_len_mean
# metrics.slurm_bf_queue_len_tot
# metrics.slurm_bf_table_size
# metrics.slurm_bf_table_size_tot
# metrics.slurm_bf_try_depth_mean
# metrics.slurm_bf_when_last_cycle
metrics.slurm_jobs
metrics.slurm_jobs_bootfail
metrics.slurm_jobs_cancelled
metrics.slurm_jobs_completed
metrics.slurm_jobs_completing
# metrics.slurm_jobs_configuring
metrics.slurm_jobs_cpus_alloc
# metrics.slurm_jobs_deadline
# metrics.slurm_jobs_expediting
# metrics.slurm_jobs_failed
# metrics.slurm_jobs_fed_requeued
metrics.slurm_jobs_finished
metrics.slurm_jobs_hold
metrics.slurm_jobs_memory_alloc
metrics.slurm_jobs_node_failed
metrics.slurm_jobs_nodes_alloc
metrics.slurm_jobs_outofmemory
metrics.slurm_jobs_pending
# metrics.slurm_jobs_powerup_node
# metrics.slurm_jobs_preempted
# metrics.slurm_jobs_requeued
# metrics.slurm_jobs_resizing
# metrics.slurm_jobs_revoked
# metrics.slurm_jobs_running
# metrics.slurm_jobs_signaling
# metrics.slurm_jobs_stageout
# metrics.slurm_jobs_started
# metrics.slurm_jobs_suspended
# metrics.slurm_jobs_timeout
# metrics.slurm_last_backfilled_jobs
# metrics.slurm_last_proc_req_start
metrics.slurm_node_cpus
metrics.slurm_node_cpus_alloc
metrics.slurm_node_cpus_effective
metrics.slurm_node_cpus_idle
metrics.slurm_node_memory_alloc_bytes
metrics.slurm_node_memory_bytes
metrics.slurm_node_memory_effective_bytes
metrics.slurm_node_memory_free_bytes
metrics.slurm_nodes
metrics.slurm_nodes_alloc
metrics.slurm_nodes_blocked
metrics.slurm_nodes_cloud
metrics.slurm_nodes_completing
metrics.slurm_nodes_down
metrics.slurm_nodes_drain
metrics.slurm_nodes_drained
metrics.slurm_nodes_draining
# metrics.slurm_nodes_dyn_future
# metrics.slurm_nodes_dyn_normal
# metrics.slurm_nodes_external
# metrics.slurm_nodes_fail
# metrics.slurm_nodes_future
# metrics.slurm_nodes_idle
# metrics.slurm_nodes_invalid_reg
# metrics.slurm_nodes_maint
# metrics.slurm_nodes_mixed
# metrics.slurm_nodes_noresp
# metrics.slurm_nodes_planned
# metrics.slurm_nodes_power_down
# metrics.slurm_nodes_power_up
# metrics.slurm_nodes_powered_down
# metrics.slurm_nodes_powering_up
# metrics.slurm_nodes_reboot_issued
# metrics.slurm_nodes_reboot_req
# metrics.slurm_nodes_resv
# metrics.slurm_nodes_unknown
# metrics.slurm_partition_cpus
# metrics.slurm_partition_jobs
# metrics.slurm_partition_jobs_bootfail
# metrics.slurm_partition_jobs_cancelled
# metrics.slurm_partition_jobs_completed
# metrics.slurm_partition_jobs_completing
# metrics.slurm_partition_jobs_configuring
# metrics.slurm_partition_jobs_cpus_alloc
# metrics.slurm_partition_jobs_deadline
# metrics.slurm_partition_jobs_expediting
# metrics.slurm_partition_jobs_failed
# metrics.slurm_partition_jobs_fed_requeued
# metrics.slurm_partition_jobs_finished
# metrics.slurm_partition_jobs_hold
# metrics.slurm_partition_jobs_max_job_nodes
# metrics.slurm_partition_jobs_max_job_nodes_nohold
# metrics.slurm_partition_jobs_memory_alloc
# metrics.slurm_partition_jobs_min_job_nodes
# metrics.slurm_partition_jobs_min_job_nodes_nohold
# metrics.slurm_partition_jobs_node_failed
# metrics.slurm_partition_jobs_outofmemory
# metrics.slurm_partition_jobs_pending
# metrics.slurm_partition_jobs_powerup_node
# metrics.slurm_partition_jobs_preempted
# metrics.slurm_partition_jobs_requeued
# metrics.slurm_partition_jobs_resizing
# metrics.slurm_partition_jobs_revoked
# metrics.slurm_partition_jobs_running
# metrics.slurm_partition_jobs_signaling
# metrics.slurm_partition_jobs_stageout
# metrics.slurm_partition_jobs_started
# metrics.slurm_partition_jobs_suspended
# metrics.slurm_partition_jobs_timeout
# metrics.slurm_partition_jobs_wait_part_node_limit
# metrics.slurm_partition_nodes
# metrics.slurm_partition_nodes_alloc
# metrics.slurm_partition_nodes_blocked
# metrics.slurm_partition_nodes_cg
# metrics.slurm_partition_nodes_cloud
# metrics.slurm_partition_nodes_cpus_alloc
# metrics.slurm_partition_nodes_cpus_efctv
# metrics.slurm_partition_nodes_cpus_idle
# metrics.slurm_partition_nodes_down
# metrics.slurm_partition_nodes_drain
# metrics.slurm_partition_nodes_drained
# metrics.slurm_partition_nodes_draining
# metrics.slurm_partition_nodes_dyn_future
# metrics.slurm_partition_nodes_dyn_normal
# metrics.slurm_partition_nodes_external
# metrics.slurm_partition_nodes_fail
# metrics.slurm_partition_nodes_future
# metrics.slurm_partition_nodes_idle
# metrics.slurm_partition_nodes_invalid_reg
# metrics.slurm_partition_nodes_maint
# metrics.slurm_partition_nodes_mem_alloc
# metrics.slurm_partition_nodes_mem_avail
# metrics.slurm_partition_nodes_mem_free
# metrics.slurm_partition_nodes_mem_tot
# metrics.slurm_partition_nodes_mixed
# metrics.slurm_partition_nodes_no_resp
# metrics.slurm_partition_nodes_planned
# metrics.slurm_partition_nodes_power_down
# metrics.slurm_partition_nodes_power_up
# metrics.slurm_partition_nodes_powered_down
# metrics.slurm_partition_nodes_powering_down
# metrics.slurm_partition_nodes_powering_up
# metrics.slurm_partition_nodes_reboot_issued
# metrics.slurm_partition_nodes_reboot_requested
# metrics.slurm_partition_nodes_resv
# metrics.slurm_partition_nodes_unknown
# metrics.slurm_partitions
# metrics.slurm_sched_exit_end
# metrics.slurm_sched_exit_lic
# metrics.slurm_sched_exit_max_depth
# metrics.slurm_sched_exit_max_job_start
# metrics.slurm_sched_exit_rpc_cnt
# metrics.slurm_sched_exit_timeout
# metrics.slurm_sched_mean_cycle
# metrics.slurm_sched_mean_depth_cycle
# metrics.slurm_sched_stats_timestamp
# metrics.slurm_schedule_cycle_cnt
# metrics.slurm_schedule_cycle_depth
# metrics.slurm_schedule_cycle_last
# metrics.slurm_schedule_cycle_max
# metrics.slurm_schedule_cycle_tot
# metrics.slurm_schedule_queue_len
# metrics.slurm_sdiag_job_states_ts
# metrics.slurm_sdiag_jobs_canceled
# metrics.slurm_sdiag_jobs_completed
# metrics.slurm_sdiag_jobs_failed
# metrics.slurm_sdiag_jobs_pending
# metrics.slurm_sdiag_jobs_running
# metrics.slurm_sdiag_jobs_started
# metrics.slurm_sdiag_jobs_submitted
# metrics.slurm_sdiag_latency
# metrics.slurm_server_thread_cnt
# metrics.slurm_slurmdbd_queue_size
metrics.slurm_user_jobs
metrics.slurm_user_jobs_bootfail
metrics.slurm_user_jobs_cancelled
metrics.slurm_user_jobs_completed
metrics.slurm_user_jobs_completing
metrics.slurm_user_jobs_configuring
metrics.slurm_user_jobs_cpus_alloc
# metrics.slurm_user_jobs_deadline
# metrics.slurm_user_jobs_expediting
# metrics.slurm_user_jobs_failed
# metrics.slurm_user_jobs_fed_requeued
metrics.slurm_user_jobs_finished
metrics.slurm_user_jobs_hold
metrics.slurm_user_jobs_memory_alloc
metrics.slurm_user_jobs_node_failed
metrics.slurm_user_jobs_nodes_alloc
# metrics.slurm_user_jobs_outofmemory
# metrics.slurm_user_jobs_pending
# metrics.slurm_user_jobs_powerup_node
# metrics.slurm_user_jobs_preempted
# metrics.slurm_user_jobs_requeued
# metrics.slurm_user_jobs_resizing
# metrics.slurm_user_jobs_revoked
# metrics.slurm_user_jobs_running
# metrics.slurm_user_jobs_signaling
# metrics.slurm_user_jobs_stageout
# metrics.slurm_user_jobs_started
# metrics.slurm_user_jobs_suspended
# metrics.slurm_user_jobs_timeout
# metrics.slurm_user_node_active
# metrics.up
```
----

Metrics related to node_exporter :
```sh
# metrics.go_gc_duration_seconds
# metrics.go_gc_duration_seconds_count
# metrics.go_gc_duration_seconds_sum
# metrics.go_gc_gogc_percent
# metrics.go_gc_gomemlimit_bytes
# metrics.go_goroutines
# metrics.go_info
metrics.go_memstats_alloc_bytes
metrics.go_memstats_alloc_bytes_total
# metrics.go_memstats_buck_hash_sys_bytes
# metrics.go_memstats_frees_total
# metrics.go_memstats_gc_sys_bytes
# metrics.go_memstats_heap_alloc_bytes
# metrics.go_memstats_heap_idle_bytes
# metrics.go_memstats_heap_inuse_bytes
# metrics.go_memstats_heap_objects
# metrics.go_memstats_heap_released_bytes
# metrics.go_memstats_heap_sys_bytes
# metrics.go_memstats_last_gc_time_seconds
# metrics.go_memstats_mallocs_total
# metrics.go_memstats_mcache_inuse_bytes
# metrics.go_memstats_mcache_sys_bytes
# metrics.go_memstats_mspan_inuse_bytes
# metrics.go_memstats_mspan_sys_bytes
# metrics.go_memstats_next_gc_bytes
# metrics.go_memstats_other_sys_bytes
# metrics.go_memstats_stack_inuse_bytes
# metrics.go_memstats_stack_sys_bytes
# metrics.go_memstats_sys_bytes
# metrics.go_sched_gomaxprocs_threads
# metrics.go_threads
# metrics.node_arp_entries
# metrics.node_boot_time_seconds
metrics.node_context_switches_total
# metrics.node_cooling_device_cur_state
# metrics.node_cooling_device_max_state
metrics.node_cpu_core_throttles_total
metrics.node_cpu_frequency_hertz
metrics.node_cpu_frequency_max_hertz
metrics.node_cpu_frequency_min_hertz
# metrics.node_cpu_guest_seconds_total
metrics.node_cpu_info
# metrics.node_cpu_package_throttles_total
# metrics.node_cpu_scaling_frequency_hertz
# metrics.node_cpu_scaling_frequency_max_hertz
# metrics.node_cpu_scaling_frequency_min_hertz
# metrics.node_cpu_scaling_governor
# metrics.node_cpu_seconds_total
# metrics.node_disk_discard_time_seconds_total
# metrics.node_disk_discarded_sectors_total
# metrics.node_disk_discards_completed_total
# metrics.node_disk_discards_merged_total
# metrics.node_disk_flush_requests_time_seconds_total
# metrics.node_disk_flush_requests_total
# metrics.node_disk_info
# metrics.node_disk_io_now
# metrics.node_disk_io_time_seconds_total
# metrics.node_disk_io_time_weighted_seconds_total
# metrics.node_disk_read_bytes_total
# metrics.node_disk_read_time_seconds_total
# metrics.node_disk_reads_completed_total
# metrics.node_disk_reads_merged_total
# metrics.node_disk_write_time_seconds_total
# metrics.node_disk_writes_completed_total
# metrics.node_disk_writes_merged_total
# metrics.node_disk_written_bytes_total
# metrics.node_dmi_info
# metrics.node_entropy_available_bits
# metrics.node_entropy_pool_size_bits
# metrics.node_exporter_build_info
# metrics.node_filefd_allocated
# metrics.node_filefd_maximum
metrics.node_filesystem_avail_bytes
metrics.node_filesystem_device_error
metrics.node_filesystem_files
metrics.node_filesystem_files_free
metrics.node_filesystem_free_bytes
# metrics.node_filesystem_mount_info
# metrics.node_filesystem_purgeable_bytes
# metrics.node_filesystem_readonly
# metrics.node_filesystem_size_bytes
metrics.node_forks_total
# metrics.node_hwmon_chip_names
# metrics.node_hwmon_curr_amps
# metrics.node_hwmon_curr_max_amps
# metrics.node_hwmon_fan_rpm
# metrics.node_hwmon_in_max_volts
# metrics.node_hwmon_in_min_volts
# metrics.node_hwmon_in_volts
# metrics.node_hwmon_pwm
# metrics.node_hwmon_sensor_label
# metrics.node_hwmon_temp_celsius
# metrics.node_hwmon_temp_crit_alarm_celsius
# metrics.node_hwmon_temp_crit_celsius
# metrics.node_hwmon_temp_max_celsius
# metrics.node_intr_total
metrics.node_load1
metrics.node_load15
metrics.node_load5
# metrics.node_memory_Active_anon_bytes
metrics.node_memory_Active_bytes
# metrics.node_memory_Active_file_bytes
# metrics.node_memory_AnonHugePages_bytes
# metrics.node_memory_AnonPages_bytes
# metrics.node_memory_Bounce_bytes
metrics.node_memory_Buffers_bytes
metrics.node_memory_Cached_bytes
# metrics.node_memory_CmaFree_bytes
# metrics.node_memory_CmaTotal_bytes
# metrics.node_memory_CommitLimit_bytes
# metrics.node_memory_Committed_AS_bytes
# metrics.node_memory_DirectMap1G_bytes
# metrics.node_memory_DirectMap2M_bytes
# metrics.node_memory_DirectMap4k_bytes
# metrics.node_memory_Dirty_bytes
# metrics.node_memory_HardwareCorrupted_bytes
metrics.node_memory_HugePages_Free
metrics.node_memory_HugePages_Rsvd
metrics.node_memory_HugePages_Surp
metrics.node_memory_HugePages_Total
metrics.node_memory_Hugepagesize_bytes
# metrics.node_memory_Inactive_anon_bytes
# metrics.node_memory_Inactive_bytes
# metrics.node_memory_Inactive_file_bytes
# metrics.node_memory_KernelStack_bytes
# metrics.node_memory_Mapped_bytes
metrics.node_memory_MemAvailable_bytes
metrics.node_memory_MemFree_bytes
metrics.node_memory_MemTotal_bytes
# metrics.node_memory_Mlocked_bytes
# metrics.node_memory_NFS_Unstable_bytes
# metrics.node_memory_PageTables_bytes
metrics.node_memory_Percpu_bytes
# metrics.node_memory_SReclaimable_bytes
# metrics.node_memory_SUnreclaim_bytes
# metrics.node_memory_ShmemHugePages_bytes
# metrics.node_memory_ShmemPmdMapped_bytes
# metrics.node_memory_Shmem_bytes
# metrics.node_memory_Slab_bytes
metrics.node_memory_SwapCached_bytes
metrics.node_memory_SwapFree_bytes
metrics.node_memory_SwapTotal_bytes
metrics.node_memory_Unevictable_bytes
metrics.node_memory_VmallocChunk_bytes
metrics.node_memory_VmallocTotal_bytes
metrics.node_memory_VmallocUsed_bytes
metrics.node_memory_WritebackTmp_bytes
metrics.node_memory_Writeback_bytes
# metrics.node_memory_Zswap_bytes
# metrics.node_netstat_Icmp6_InErrors
# metrics.node_netstat_Icmp6_InMsgs
# metrics.node_netstat_Icmp6_OutMsgs
# metrics.node_netstat_Icmp_InErrors
# metrics.node_netstat_Icmp_InMsgs
# metrics.node_netstat_Icmp_OutMsgs
# metrics.node_netstat_Ip6_InOctets
# metrics.node_netstat_Ip6_OutOctets
# metrics.node_netstat_IpExt_InOctets
# metrics.node_netstat_IpExt_OutOctets
# metrics.node_netstat_Ip_Forwarding
# metrics.node_netstat_TcpExt_ListenDrops
# metrics.node_netstat_TcpExt_ListenOverflows
# metrics.node_netstat_TcpExt_SyncookiesFailed
# metrics.node_netstat_TcpExt_SyncookiesRecv
# metrics.node_netstat_TcpExt_SyncookiesSent
# metrics.node_netstat_TcpExt_TCPOFOQueue
# metrics.node_netstat_TcpExt_TCPRcvQDrop
# metrics.node_netstat_TcpExt_TCPSynRetrans
# metrics.node_netstat_TcpExt_TCPTimeouts
# metrics.node_netstat_Tcp_ActiveOpens
# metrics.node_netstat_Tcp_CurrEstab
# metrics.node_netstat_Tcp_InErrs
# metrics.node_netstat_Tcp_InSegs
# metrics.node_netstat_Tcp_OutRsts
# metrics.node_netstat_Tcp_OutSegs
# metrics.node_netstat_Tcp_PassiveOpens
# metrics.node_netstat_Tcp_RetransSegs
# metrics.node_netstat_Udp6_InDatagrams
# metrics.node_netstat_Udp6_InErrors
# metrics.node_netstat_Udp6_NoPorts
# metrics.node_netstat_Udp6_OutDatagrams
# metrics.node_netstat_Udp6_RcvbufErrors
# metrics.node_netstat_Udp6_SndbufErrors
# metrics.node_netstat_UdpLite6_InErrors
# metrics.node_netstat_UdpLite_InErrors
# metrics.node_netstat_Udp_InDatagrams
# metrics.node_netstat_Udp_InErrors
# metrics.node_netstat_Udp_NoPorts
# metrics.node_netstat_Udp_OutDatagrams
# metrics.node_netstat_Udp_RcvbufErrors
# metrics.node_netstat_Udp_SndbufErrors
# metrics.node_network_address_assign_type
# metrics.node_network_carrier
# metrics.node_network_carrier_changes_total
# metrics.node_network_carrier_down_changes_total
# metrics.node_network_carrier_up_changes_total
# metrics.node_network_device_id
# metrics.node_network_dormant
# metrics.node_network_flags
# metrics.node_network_iface_id
# metrics.node_network_iface_link
# metrics.node_network_iface_link_mode
# metrics.node_network_info
# metrics.node_network_mtu_bytes
# metrics.node_network_name_assign_type
# metrics.node_network_net_dev_group
# metrics.node_network_protocol_type
# metrics.node_network_receive_bytes_total
# metrics.node_network_receive_compressed_total
# metrics.node_network_receive_drop_total
# metrics.node_network_receive_errs_total
# metrics.node_network_receive_fifo_total
# metrics.node_network_receive_frame_total
# metrics.node_network_receive_multicast_total
# metrics.node_network_receive_nohandler_total
# metrics.node_network_receive_packets_total
# metrics.node_network_speed_bytes
# metrics.node_network_transmit_bytes_total
# metrics.node_network_transmit_carrier_total
# metrics.node_network_transmit_colls_total
# metrics.node_network_transmit_compressed_total
# metrics.node_network_transmit_drop_total
# metrics.node_network_transmit_errs_total
# metrics.node_network_transmit_fifo_total
# metrics.node_network_transmit_packets_total
# metrics.node_network_transmit_queue_length
# metrics.node_network_up
# metrics.node_nf_conntrack_entries
# metrics.node_nf_conntrack_entries_limit
# metrics.node_nf_conntrack_stat_drop
# metrics.node_nf_conntrack_stat_early_drop
# metrics.node_nf_conntrack_stat_found
# metrics.node_nf_conntrack_stat_ignore
# metrics.node_nf_conntrack_stat_insert
# metrics.node_nf_conntrack_stat_insert_failed
# metrics.node_nf_conntrack_stat_invalid
# metrics.node_nf_conntrack_stat_search_restart
metrics.node_os_info
metrics.node_os_support_end_timestamp_seconds
metrics.node_os_version
# metrics.node_power_supply_capacity
# metrics.node_power_supply_charge_ampere
# metrics.node_power_supply_charge_full
# metrics.node_power_supply_charge_full_design
# metrics.node_power_supply_current_ampere
# metrics.node_power_supply_current_max
# metrics.node_power_supply_cyclecount
# metrics.node_power_supply_info
# metrics.node_power_supply_online
# metrics.node_power_supply_present
# metrics.node_power_supply_voltage_max
# metrics.node_power_supply_voltage_min
# metrics.node_power_supply_voltage_min_design
# metrics.node_power_supply_voltage_volt
metrics.node_procs_blocked
metrics.node_procs_running
# metrics.node_rapl_core_joules_total
# metrics.node_rapl_dram_joules_total
# metrics.node_rapl_package_joules_total
# metrics.node_rapl_psys_joules_total
# metrics.node_rapl_uncore_joules_total
# metrics.node_schedstat_running_seconds_total
# metrics.node_schedstat_timeslices_total
# metrics.node_schedstat_waiting_seconds_total
# metrics.node_scrape_collector_duration_seconds
# metrics.node_scrape_collector_success
metrics.node_selinux_enabled
# metrics.node_sockstat_FRAG6_inuse
# metrics.node_sockstat_FRAG6_memory
# metrics.node_sockstat_FRAG_inuse
# metrics.node_sockstat_FRAG_memory
# metrics.node_sockstat_RAW6_inuse
# metrics.node_sockstat_RAW_inuse
# metrics.node_sockstat_TCP6_inuse
# metrics.node_sockstat_TCP_alloc
# metrics.node_sockstat_TCP_inuse
# metrics.node_sockstat_TCP_mem
# metrics.node_sockstat_TCP_mem_bytes
# metrics.node_sockstat_TCP_orphan
# metrics.node_sockstat_TCP_tw
# metrics.node_sockstat_UDP6_inuse
# metrics.node_sockstat_UDPLITE6_inuse
# metrics.node_sockstat_UDPLITE_inuse
# metrics.node_sockstat_UDP_inuse
# metrics.node_sockstat_UDP_mem
# metrics.node_sockstat_UDP_mem_bytes
# metrics.node_sockstat_sockets_used
# metrics.node_softnet_backlog_len
# metrics.node_softnet_cpu_collision_total
# metrics.node_softnet_dropped_total
# metrics.node_softnet_flow_limit_count_total
# metrics.node_softnet_processed_total
# metrics.node_softnet_received_rps_total
# metrics.node_softnet_times_squeezed_total
# metrics.node_textfile_scrape_error
# metrics.node_thermal_zone_temp
# metrics.node_time_clocksource_available_info
# metrics.node_time_clocksource_current_info
# metrics.node_time_seconds
# metrics.node_time_zone_offset_seconds
# metrics.node_timex_estimated_error_seconds
# metrics.node_timex_frequency_adjustment_ratio
# metrics.node_timex_loop_time_constant
# metrics.node_timex_maxerror_seconds
# metrics.node_timex_offset_seconds
# metrics.node_timex_pps_calibration_total
# metrics.node_timex_pps_error_total
# metrics.node_timex_pps_frequency_hertz
# metrics.node_timex_pps_jitter_seconds
# metrics.node_timex_pps_jitter_total
# metrics.node_timex_pps_shift_seconds
# metrics.node_timex_pps_stability_exceeded_total
# metrics.node_timex_pps_stability_hertz
# metrics.node_timex_status
# metrics.node_timex_sync_status
# metrics.node_timex_tai_offset_seconds
# metrics.node_timex_tick_seconds
# metrics.node_udp_queues
metrics.node_uname_info
# metrics.node_vmstat_oom_kill
# metrics.node_vmstat_pgfault
# metrics.node_vmstat_pgmajfault
# metrics.node_vmstat_pgpgin
# metrics.node_vmstat_pgpgout
# metrics.node_vmstat_pswpin
# metrics.node_vmstat_pswpout
# metrics.node_watchdog_bootstatus
# metrics.node_watchdog_info
# metrics.node_watchdog_nowayout
# metrics.node_watchdog_timeleft_seconds
# metrics.node_watchdog_timeout_seconds
# metrics.node_xfs_allocation_btree_compares_total
# metrics.node_xfs_allocation_btree_lookups_total
# metrics.node_xfs_allocation_btree_records_deleted_total
# metrics.node_xfs_allocation_btree_records_inserted_total
# metrics.node_xfs_block_map_btree_compares_total
# metrics.node_xfs_block_map_btree_lookups_total
# metrics.node_xfs_block_map_btree_records_deleted_total
# metrics.node_xfs_block_map_btree_records_inserted_total
# metrics.node_xfs_block_mapping_extent_list_compares_total
# metrics.node_xfs_block_mapping_extent_list_deletions_total
# metrics.node_xfs_block_mapping_extent_list_insertions_total
# metrics.node_xfs_block_mapping_extent_list_lookups_total
# metrics.node_xfs_block_mapping_reads_total
# metrics.node_xfs_block_mapping_unmaps_total
# metrics.node_xfs_block_mapping_writes_total
# metrics.node_xfs_directory_operation_create_total
# metrics.node_xfs_directory_operation_getdents_total
# metrics.node_xfs_directory_operation_lookup_total
# metrics.node_xfs_directory_operation_remove_total
# metrics.node_xfs_extent_allocation_blocks_allocated_total
# metrics.node_xfs_extent_allocation_blocks_freed_total
# metrics.node_xfs_extent_allocation_extents_allocated_total
# metrics.node_xfs_extent_allocation_extents_freed_total
# metrics.node_xfs_inode_operation_attempts_total
# metrics.node_xfs_inode_operation_attribute_changes_total
# metrics.node_xfs_inode_operation_duplicates_total
# metrics.node_xfs_inode_operation_found_total
# metrics.node_xfs_inode_operation_missed_total
# metrics.node_xfs_inode_operation_reclaims_total
# metrics.node_xfs_inode_operation_recycled_total
# metrics.node_xfs_read_calls_total
# metrics.node_xfs_vnode_active_total
# metrics.node_xfs_vnode_allocate_total
# metrics.node_xfs_vnode_get_total
# metrics.node_xfs_vnode_hold_total
# metrics.node_xfs_vnode_reclaim_total
# metrics.node_xfs_vnode_release_total
# metrics.node_xfs_vnode_remove_total
# metrics.node_xfs_write_calls_total
# metrics.process_cpu_seconds_total
# metrics.process_max_fds
# metrics.process_network_receive_bytes_total
# metrics.process_network_transmit_bytes_total
# metrics.process_open_fds
# metrics.process_resident_memory_bytes
# metrics.process_start_time_seconds
# metrics.process_virtual_memory_bytes
# metrics.process_virtual_memory_max_bytes
# metrics.promhttp_metric_handler_errors_total
# metrics.promhttp_metric_handler_requests_in_flight
# metrics.promhttp_metric_handler_requests_total
# metrics.scrape_duration_seconds
# metrics.scrape_samples_post_metric_relabeling
# metrics.scrape_samples_scraped
# metrics.scrape_series_added
```


