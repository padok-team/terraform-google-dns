output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = google_dns_managed_zone.this.id
}

output "zone_name_servers" {
  description = "Delegate your managed_zone to these virtual name servers."
  value = google_dns_managed_zone.this.name_servers
}