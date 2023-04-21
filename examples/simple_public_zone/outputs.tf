output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = module.simple_public_zone.managed_zone_id
}
