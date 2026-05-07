module "resource_group" {
  source   = "./terraformModules/modules/RG"
  name     = var.resource_group_name
  location = var.location
  //tags     = var.tags
}

module "virtual_network" {
  source              = "./terraformModules/modules/Vnet"
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = module.resource_group.name
    subnet {
        name           = "example-subnet"
        address_prefix = "10.0.1.0/24"
    }
}

