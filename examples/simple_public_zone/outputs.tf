output "zone_id" {
  description = "ID of the deployed DNS zone."
  value       = module.simple_public_zone.dns_managed_zone_id
}
