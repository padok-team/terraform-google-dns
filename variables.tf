variable "fqdn" {
  type        = string
  description = "The Full Qualified Domain Name of your DNS zone"

  validation {
    condition     = can(regex("^(?!:\/\/)(?=.{1,255}$)((.{1,63}\.){1,127}(?![0-9]*$)[a-z0-9-]+\.?)$", var.fqdn))
    error_message = "Error: your fqdn input is not valid"
  }
}

variable "public" {
  type        = bool
  description = "Visibility of your zone"
  default     = true
}

variable "records" {
  type        = map(object({
      name = string
      type = string
      value = string
      priority = optional(number)
      ttl = number
      flags = optional(number)
      tag = optional(string)
  }))
  description = "List of your DNS records"
}
