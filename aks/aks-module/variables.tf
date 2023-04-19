variable "resource_group_name" {
    description = "name of resource group"
    type        = string
    #default     = "k6_aks_resource_group"
}

variable "location_resource_group" {
    description = "location of resource group"
    type        = string
    #default     = "brazilsouth"
}

variable "name_resource_aks" {
    description = "name of aks"
    type        = string
    #default     = "k6_cluster"

}

variable "dns_prefix_aks" {
    description = "dns prefix of aks"
    type        = string
    #default     = "k6-cluster"

}

variable "azure_ad_id" {
    description = "id do azure ad"
    type        = string
    #default     = "azure-k6321d"

}


variable "env" {
    description = "env azure ad"
    type        = string
    #default     = "azure-k6321d"

}