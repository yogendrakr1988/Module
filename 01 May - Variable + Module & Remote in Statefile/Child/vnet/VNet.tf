resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = ["10.0.0.0/16"]
  location            = var.vnet-location
  resource_group_name = var.rg-name
}

variable "vnet-name" {}
variable "rg-name" {}
variable "vnet-location" {}