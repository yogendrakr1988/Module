resource "azurerm_storage_container" "cntr" {
  name                  = "faltucntr"
  storage_account_id    = azurerm_storage_account.stg.id
  container_access_type = "private"
}