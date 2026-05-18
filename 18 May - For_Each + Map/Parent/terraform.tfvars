rg = {

  rg1 = {

    name     = "dev-rg"
    location = "central us"
  }

  rg2 = {

    name     = "test-rg"
    location = "central india"
  }
}

stg = {
  stg1 = {
    name                = "mystgyogi321"
    resource_group_name = "dev-rg"
    location            = "central us"
  }

  stg2 = {
    name                = "mystgyog2221"
    resource_group_name = "test-rg"
    location            = "central india"
  }

}

vnet = {

  vnet1 = {
    name     = "dev-vnet"
    location = "central india"
resource_group_name  = "test-rg"
  }

  vnet2 = {
    name     = "test-vnet"
    location = "central us"
    resource_group_name  = "dev-rg"
  }
}

subnet = {
  subnet1 = {
    name = "dev-subnet"
   resource_group_name = "test-rg"
   virtual_network_name = "dev-vnet"
}
  subnet2 = {
    name = "test-subnet"
   resource_group_name = "dev-rg"
   virtual_network_name = "test-vnet"
}
}

nsg = {
  nsg1 = {
    name = "dev-nsg"
   resource_group_name = "test-rg"
   location = "central india"
}
  nsg2 = {
    name = "test-nsg"
   resource_group_name = "dev-rg"
   location = "central us"
}
}

pip = {
  pip1 = {
    name = "dev-pip"
   resource_group_name = "test-rg"
   location = "central india"
}
  pip2 = {
    name = "test-pip"
   resource_group_name = "dev-rg"
   location = "central us"
}
}

nic = {
  nic1 = {
    name = "dev-nic"
   resource_group_name = "test-rg"
   location = "central india"
}
  nic2 = {
    name = "test-nic"
   resource_group_name = "dev-rg"
   location = "central us"
}
}

vm = {
  vm1 = {
    name = "vmpublic"
   resource_group_name = "test-rg"
   location = "central india"
   admin_username = "vm01"
   admin_password = "admin@4321"
}
  vm2 = {
    name = "vmpublicyogi"
   resource_group_name = "dev-rg"
   location = "central us"
     admin_username = "vm11"
   admin_password = "admin@4321"
}
}
