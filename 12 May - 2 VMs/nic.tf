resource "azurerm_network_interface" "nic" {
  name                = "faltunic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    public_ip_address_id = azurerm_public_ip.pip.id
    private_ip_address_allocation = "Dynamic"
  }
}

output "nic" {
    value = azurerm_network_interface.nic.id
  }