output "terraform_network" {
  value = azurerm_virtual_network.terraform_network.name
}

output "terraform_subnet" {
  value = azurerm_subnet.terraform_subnet.id
}

output "terraform_public_ip" {
  value = azurerm_public_ip.terraform_public_ip.id
}
