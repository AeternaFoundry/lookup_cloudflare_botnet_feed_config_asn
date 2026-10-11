variable "botnet_feed_config_asn_lookup" {
  description = <<EOT
Map of botnet_feed_config_asn_lookup, attributes below
Optional:
    - account_id
EOT

  type = map(object({
    account_id = optional(string)
  }))
}

