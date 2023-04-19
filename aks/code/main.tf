locals {
  env = "prod"
  azure_ad_id = "azure_ddq231231"
}


module "azure_ad" {
  source = "../aks-module"


  env = local.env
  azure_ad_id = local.azure_ad_id
}