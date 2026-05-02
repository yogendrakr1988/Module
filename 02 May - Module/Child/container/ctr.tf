resource "azurerm_storage_container" "ctr09" {
  name                  = var.ctr-name
  storage_account_id    = var.stg-id
  container_access_type = "private"
}

variable "ctr-name" {}
variable "stg-id" {}