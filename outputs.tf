output "ruleset_lookup_id" {
  description = "Map of id values across all ruleset_lookup, keyed the same as var.ruleset_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_ruleset.ruleset_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ruleset_lookup_name" {
  description = "Map of name values across all ruleset_lookup, keyed the same as var.ruleset_lookup except keys with no name are omitted"
  value       = { for k, v in data.pagerduty_ruleset.ruleset_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ruleset_lookup_routing_keys" {
  description = "Map of routing_keys values across all ruleset_lookup, keyed the same as var.ruleset_lookup except keys with no routing_keys are omitted"
  value       = { for k, v in data.pagerduty_ruleset.ruleset_lookup : k => v.routing_keys if v.routing_keys != null && length(v.routing_keys) > 0 }
}

