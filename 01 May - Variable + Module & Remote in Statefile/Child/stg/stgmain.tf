resource "azurerm_storage_account" "stg" {
  name                     = var.stg-name
  resource_group_name      = var.rg-name
  location                 = var.stg-location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "stg-name" {}
variable "rg-name" {}
variable "stg-location" {}

output "stg_id" {
  value = azurerm_storage_account.stg.id
}