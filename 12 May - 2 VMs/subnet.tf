resource "azurerm_subnet" "subnet" {
  name                 = "faltusubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

output "subnet_id" {
    value = azurerm_subnet.subnet.id
  }