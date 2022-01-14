variable "name" {
  type        = string
  description = "Name of your DNS zone."
}

variable "fqdn" {
  type        = string
  description = "The Full Qualified Domain Name of your DNS zone."

  validation {
    condition     = can(regex("^([a-zA-Z0-9. _-])+\\.+$", var.fqdn))
    error_message = "Error: your FQDN input is invalid. Please check you didn't forget the final '.' at the end."
  }
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
}
