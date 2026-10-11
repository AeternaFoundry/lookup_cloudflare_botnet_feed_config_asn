data "cloudflare_botnet_feed_config_asn" "botnet_feed_config_asn_lookup" {
  for_each = var.botnet_feed_config_asn_lookup

  account_id = each.value.account_id
}

