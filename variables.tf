variable "ruleset_lookup" {
  description = <<EOT
Map of ruleset_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

