output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = google_dns_managed_zone.this.id
}
