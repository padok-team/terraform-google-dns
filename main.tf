# Create Domain
resource "google_dns_managed_zone" "this" {
  count = var.fqdn != "" ? 1 : 0

  project = var.project_id

  name     = var.name
  dns_name = var.fqdn

  visibility = var.public ? "public" : "private"

  // CKV_GCP_16:
  // DNSSEC is a feature of the Domain Name System that authenticates responses to domain name lookups. DNSSEC prevents attackers from manipulating or poisoning the responses to DNS requests.
  dnssec_config {
    state = var.dnssec_state
  }
}

data "google_dns_managed_zone" "this" {
  count = var.fqdn != "" ? 0 : 1

  name = var.name
}

locals {
  dns_managed_zone = try(google_dns_managed_zone.this[0], data.google_dns_managed_zone.this[0])
}

# Create DNS records
resource "google_dns_record_set" "this" {
  for_each = var.records

  project = var.project_id

  # Required
  managed_zone = local.dns_managed_zone.name
  name         = each.value.name != "" ? format("%s.%s", each.value.name, local.dns_managed_zone.dns_name) : local.dns_managed_zone.dns_name
  type         = each.value.type
  rrdatas      = each.value.rrdatas

  # Optionnal
  ttl = each.value.ttl
}
