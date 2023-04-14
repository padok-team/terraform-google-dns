output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = module.simple_private_zone.managed_zone_id
}
