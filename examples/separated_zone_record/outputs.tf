output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = module.no_record_zone.dns_managed_zone_id
}
