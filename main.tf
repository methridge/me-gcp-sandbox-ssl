resource "tls_private_key" "acme" {
  for_each  = var.regions
  algorithm = "RSA"
}

resource "acme_registration" "tls" {
  for_each        = var.regions
  account_key_pem = tls_private_key.acme[each.value].private_key_pem
  email_address   = var.admin_email
}

resource "acme_certificate" "tls" {
  for_each        = var.regions
  account_key_pem = acme_registration.tls[each.value].account_key_pem
  common_name     = "*.${each.value}.${var.zone_name}"

  dns_challenge {
    provider = "gcloud"
    config = {
      GCE_PROJECT = var.project
    }
  }
}
