# Create Domain
resource "google_dns_managed_zone" "main_zone" {
  name     = var.name
  dns_name = var.fqdn

  visibility = var.public ? "public" : "private"
}

# Create DNS records
resource "google_dns_record_set" "main_records" {
  for_each      = var.records

  # Required
  managed_zone  = google_dns_managed_zone.main_zone.name
  name          = "${each.value.name}.${google_dns_managed_zone.main_zone.dns_name}"
  type          = each.value.type
  rrdatas       = each.value.rrdatas

  # Optionnal
  ttl           = each.value.ttl
}
