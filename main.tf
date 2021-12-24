# Create Domain
resource "google_dns_managed_zone" "this" {
  name     = var.name
  dns_name = var.fqdn

  visibility = var.public ? "public" : "private"
}

# Create DNS records
resource "google_dns_record_set" "this" {
  for_each = var.records

  # Required
  managed_zone = google_dns_managed_zone.this.name
  name         = each.value.name != "" ? "${each.value.name}.${google_dns_managed_zone.this.dns_name}" : "${google_dns_managed_zone.this.dns_name}"
  type         = each.value.type
  rrdatas      = each.value.rrdatas

  # Optionnal
  ttl = each.value.ttl
}
