resource "elasticstack_fleet_server_host" "fleet_server_hosts" {
  for_each = var.fleet_server_hosts

  hosts     = each.value.hosts
  name      = each.value.name
  default   = each.value.default
  host_id   = each.value.host_id
  space_ids = each.value.space_ids
  timeouts  = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

