resource "azurerm_network_security_group" "nsg" {
  name                = "faltunsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "joni"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

output "nsg" {
    value = azurerm_network_security_group.nsg.id 
}

resource "azurerm_subnet_network_security_group_association" "nsg_subnet" {
    subnet_id = azurerm_subnet.subnet.id
    network_security_group_id = azurerm_network_security_group.nsg.id
  
}
