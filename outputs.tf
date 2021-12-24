output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = google_dns_managed_zone.main_zone.id
}

output "project" {
  description = "Project of the deployed DNS zone."
  value       = google_dns_managed_zone.main_zone.project
}
