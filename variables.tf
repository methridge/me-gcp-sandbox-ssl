variable "admin-email" {
  description = "Email for Let's Encrypt registration"
}

variable "project" {
  description = "GCP Project name"
}

variable "zone-name" {
  description = "Your public DNS Zone"
}

variable "regions" {
  type = set(string)
}
