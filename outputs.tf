output "dns_managed_zone_id" {
  description = "ID of the deployed DNS zone."
  value       = google_dns_managed_zone.this.id
}

output "dns_managed_zone_ns" {
  description = "Delegate your managed_zone to these virtual name servers."
  value       = google_dns_managed_zone.this.name_servers
}
