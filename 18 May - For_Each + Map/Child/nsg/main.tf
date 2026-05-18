resource "azurerm_network_security_group" "nsg" {
  for_each = var.nsg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  security_rule {
    name                       = "motu_ka_jawab"
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

variable "nsg" {}

# output "nsg" {
#     value = azurerm_network_security_group.nsg.id
#   }

#   resource "azurerm_subnet_network_security_group_association" "nsg_subnet" {
#     network_security_group_id = azurerm_network_security_group.nsg.id
#     subnet_id = azurerm_subnet.subnet.id
# }