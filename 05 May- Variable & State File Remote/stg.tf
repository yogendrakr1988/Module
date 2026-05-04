resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rg]
  name                     = var.stg-name
  resource_group_name      = var.rg-name
  location                 = var.rg-location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
variable "stg-name" {}

