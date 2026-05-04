resource "azurerm_storage_container" "cntr" {
#   depends_on            = [azurerm_storage_account.stg]
  name                  = var.cont-name
  storage_account_id  = azurerm_storage_account.stg.id
  container_access_type = "private"
}

variable "cont-name" {}
