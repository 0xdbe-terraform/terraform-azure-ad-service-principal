locals {
  application_full_name     = "Hello world"
  application_environment   = "dev"
  service_principal_purpose = "azdo"
}

module "azure_ad_sp" {
  source                    = "git::https://github.com/0xdbe-terraform/terraform-azure-ad-service-principal.git?ref=v2.0.2"
  application_full_name     = local.application_full_name
  application_environment   = local.application_environment
  service_principal_purpose = local.service_principal_purpose
}
