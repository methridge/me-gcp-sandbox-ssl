variable "admin-email" {
  description = "Email for Let's Encrypt registration"
  type        = string
}

variable "project" {
  description = "GCP Project name"
  type        = string
}

variable "zone-name" {
  description = "Your public DNS Zone"
  type        = string
}

variable "regions" {
  description = "String set of region names"
  type        = set(string)
}
