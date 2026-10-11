output "fleet_server_hosts_id" {
  description = "Map of id values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_server_hosts_default" {
  description = "Map of default values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no default are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.default if v.default != null }
}
output "fleet_server_hosts_host_id" {
  description = "Map of host_id values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no host_id are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.host_id if v.host_id != null && length(v.host_id) > 0 }
}
output "fleet_server_hosts_hosts" {
  description = "Map of hosts values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no hosts are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.hosts if v.hosts != null && length(v.hosts) > 0 }
}
output "fleet_server_hosts_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_server_hosts_name" {
  description = "Map of name values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_server_hosts_space_ids" {
  description = "Map of space_ids values across all fleet_server_hosts, keyed the same as var.fleet_server_hosts except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_server_host.fleet_server_hosts : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}

