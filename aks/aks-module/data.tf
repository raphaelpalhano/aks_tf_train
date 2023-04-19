data "azurerm_active_directory_domain_service" "azure_ad" {
    id = join("-", [var.azure_ad_id, var.env]) 
}