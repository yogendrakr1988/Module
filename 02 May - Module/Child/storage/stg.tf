resource "azurerm_storage_account" "stg" {
  name                     = var.stg-name
  resource_group_name      = var.rg-name
  location                 = var.rg-location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

output "stg_id" {
  value = azurerm_storage_account.stg.id
  
}

variable "stg-name" {}
variable "rg-name" {}
variable "rg-location" {}
