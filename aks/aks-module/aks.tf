resource "azurerm_resource_group" "k6_aks_resource" {
    name = var.resource_group_name
    location = var.location_resource_group
}


resource "azurerm_kubernetes_cluster" "k6_k8s" {
    name                = var.name_resource_aks
    location            = azurerm_resource_group.k6_aks_resource.location
    resource_group_name = azurerm_resource_group.k6_aks_resource.name
    dns_prefix          = var.dns_prefix_aks

    default_node_pool {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_D2_v2"
    }
    identity {
        type = "SystemAssigned"
    }

    tags = {
        Environment = "nonprod"
    }
}