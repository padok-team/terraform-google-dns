output "zone_id" {
  description = "ID of the deployed DNS zone"
  value       = module.simple_private_zone.zone_id
}

output "project" {
  description = "Project of the deployed DNS zone"
  value       = module.simple_private_zone.project
}
