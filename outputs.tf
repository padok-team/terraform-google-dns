output "managed_zone_id" {
  description = "ID of the deployed DNS zone."
  value       = local.dns_managed_zone.id
}

output "managed_zone_ns" {
  description = "Delegate your managed_zone to these virtual name servers."
  value       = local.dns_managed_zone.name_servers
}
