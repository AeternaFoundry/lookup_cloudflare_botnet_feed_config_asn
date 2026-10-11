output "botnet_feed_config_asn_lookup_account_id" {
  description = "Map of account_id values across all botnet_feed_config_asn_lookup, keyed the same as var.botnet_feed_config_asn_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_botnet_feed_config_asn.botnet_feed_config_asn_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "botnet_feed_config_asn_lookup_asn" {
  description = "Map of asn values across all botnet_feed_config_asn_lookup, keyed the same as var.botnet_feed_config_asn_lookup except keys with no asn are omitted"
  value       = { for k, v in data.cloudflare_botnet_feed_config_asn.botnet_feed_config_asn_lookup : k => v.asn if v.asn != null }
}

