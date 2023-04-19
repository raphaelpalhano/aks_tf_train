output "kube_config" {
    value = module.azure_ad.kube_config
    sensitive = true
}