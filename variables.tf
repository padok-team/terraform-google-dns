variable "name" {
  type        = string
  description = "Name of your DNS zone."
}

variable "project_id" {
  description = "The project ID to manage the DNS resources."
  type        = string
}


variable "fqdn" {
  type        = string
  description = "The Full Qualified Domain Name of your DNS zone. If not provided implies that the zone already exist."

  validation {
    condition     = can(regex("^([a-zA-Z0-9. _-])+\\.+$", var.fqdn)) || var.fqdn == ""
    error_message = "Error: your FQDN input is invalid. Please check you didn't forget the final '.' at the end."
  }

  default = ""
}

variable "public" {
  type        = bool
  description = "Visibility of your zone."
  default     = true
}

variable "records" {
  type = map(object({
    name    = string
    type    = string
    rrdatas = list(string)
    ttl     = number
  }))
  description = "List of your DNS records."
  default     = {}
}

variable "dnssec_state" {
  type = string
  description = "DNSSEC State"
  default = "on"
}