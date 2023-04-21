output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = module.no_record_zone.managed_zone_id
}
