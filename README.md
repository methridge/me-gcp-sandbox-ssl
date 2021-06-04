# Terraform module to create SSL Certificates

This module creates a SSL wildcard certificates for each GCP region.

## Deploying

- Create `terraform.tfvars` file

```hcl
admin_email = "awesomeuser@awesomedomain.com"
project     = "awesomeuser-sandbox"
zone_name   = "gcp.awesomedomain.com"
regions     = (["us-west1", "us-central1", "us-east1"])
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.15 |
| <a name="requirement_acme"></a> [acme](#requirement\_acme) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_acme"></a> [acme](#provider\_acme) | 2.4.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [acme_certificate.tls](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/certificate) | resource |
| [acme_registration.tls](https://registry.terraform.io/providers/vancluever/acme/latest/docs/resources/registration) | resource |
| [tls_private_key.acme](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin-email"></a> [admin-email](#input\_admin-email) | Email for Let's Encrypt registration | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | GCP Project name | `any` | n/a | yes |
| <a name="input_regions"></a> [regions](#input\_regions) | n/a | `set(string)` | n/a | yes |
| <a name="input_zone-name"></a> [zone-name](#input\_zone-name) | Your public DNS Zone | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_regional-tls-certs"></a> [regional-tls-certs](#output\_regional-tls-certs) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
