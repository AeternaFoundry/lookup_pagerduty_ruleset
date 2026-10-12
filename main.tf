data "pagerduty_ruleset" "ruleset_lookup" {
  for_each = var.ruleset_lookup

  name = each.value.name
}

