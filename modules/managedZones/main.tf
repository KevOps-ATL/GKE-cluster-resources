resource "google_dns_managed_zone" "default" {
  for_each = var.domains

  name        = each.value.name
  dns_name    = each.value.dns_name
  description = each.value.description
  labels      = { type = each.value.labels }
}

