resource "azurerm_virtual_network" "terraform_network" {
  name                = "myVnet"
  address_space       = ["192.168.0.0/16"]
  resource_group_name = var.resource_name
  location            = var.location
}

# creating subnet
resource "azurerm_subnet" "terraform_subnet" {
  name                 = "mySubnet"
  resource_group_name  = var.resource_name
  virtual_network_name = azurerm_virtual_network.terraform_network.name
  address_prefixes     = ["192.168.1.0/24"]
}

# creating public ip
resource "azurerm_public_ip" "terraform_public_ip" {
  name                = "myPublicIP"
  resource_group_name = var.resource_name
  location = var.location
  allocation_method   = "Dynamic"
}
