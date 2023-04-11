module "resource_group" {
  source = "./Modules/resourceGroup"
}

module "virtual_network" {
  source = "./Modules/virtualNetwork"
  resource_name = module.resource_group.resource_name
  location = module.resource_group.location
}

module "virtual_machine" {
  source = "./Modules/virtualMachine"
  resource_name = module.resource_group.resource_name
  location = module.resource_group.location
  subnet_id = module.virtual_network.terraform_subnet
  public_ip_id = module.virtual_network.terraform_public_ip
}