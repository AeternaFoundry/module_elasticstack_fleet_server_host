variable "fleet_server_hosts" {
  description = <<EOT
Map of fleet_server_hosts, attributes below
Required:
    - hosts
    - name
Optional:
    - default
    - host_id
    - space_ids
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    hosts     = list(string)
    name      = string
    default   = optional(bool)
    host_id   = optional(string)
    space_ids = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

