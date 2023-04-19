output "kube_config" {
    value = azurerm_kubernetes_cluster.k6_k8s.kube_config_raw
    sensitive = true
}