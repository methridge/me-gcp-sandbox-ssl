output "regional-tls-certs" {
  sensitive = true
  value     = acme_certificate.tls[*]
}
