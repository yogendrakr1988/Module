resource "azurerm_network_interface" "nic2" {
  name                = "faltunic2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

output "nic2" {
    value = azurerm_network_interface.nic2.id
  }