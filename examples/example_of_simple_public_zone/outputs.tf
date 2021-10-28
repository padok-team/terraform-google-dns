output "zone_id" {
  description = "ID of the deployed DNS zone"
  value       = module.simple_public_zone.zone_id
}

output "project" {
  description = "Project of the deployed DNS zone"
  value       = module.simple_public_zone.project
}
